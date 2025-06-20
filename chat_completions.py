#!/usr/bin/env -S uv run --script
# /// script
# requires-python = ">=3.10"
# dependencies = [
#     "datasets==3.6.*",
#     "dspy==3.0.0b1",
#     "tqdm",
# ]
# ///

# cspell:ignore mbpp dspy humaneval aforward
import datasets
import dspy
import argparse
import asyncio
from typing import List, TypedDict, Optional
from pathlib import Path
import json
import gzip
from tqdm.auto import tqdm


class Completion(dspy.Signature):
    """
    I will give you the prefix of an incomplete program that you must complete.
    In your response, do not alter the prefix but repeat it exactly, and when
    you complete the program just complete the incomplete function. Do
    not write additional functions, tests, or usage examples.

    You MUST return a full program with the prefix verbatim and the completion.
    """

    lang: str = dspy.InputField(
        description="The programming language of the program to complete"
    )
    prefix: str = dspy.InputField(description="The prefix of the program to complete")
    completion: str = dspy.OutputField(
        description="The complete program including the full prefix"
    )


completion_cot = dspy.ChainOfThought(Completion)


# The dataset has a few other fields that we don't need.
class MultiPLEProblem(TypedDict):
    name: str
    language: str
    prompt: str
    tests: str
    stop_tokens: List[str]


class MultiPLEResult(MultiPLEProblem):
    completion: str
    reasoning: str


async def do_single(
    *,
    name: str,
    lang: str,
    max_tokens: int,
    temperature: float,
    top_p: float,
    prefix: str,
) -> None:
    lm = dspy.LM(
        name,
        model_type="chat",
        temperature=temperature,
        top_p=top_p,
        max_tokens=max_tokens,
        cache=False,
    )
    dspy.configure(lm=lm)
    out = await completion_cot.aforward(lang=lang, prefix=prefix)
    print("**** REASONING ****")
    print(out.reasoning)
    print("**** COMPLETION ****")
    print(out.completion)


def missing_completions(problem_filename: Path, max_completions: int) -> int:
    """
    Returns the number of completions needed to reach max_completions.
    """
    if not problem_filename.exists():
        return max_completions
    with gzip.open(problem_filename, "rt") as f:
        existing = json.loads(f.read())
        existing_completions = len(existing["completions"])
        return min(0, max_completions - existing_completions)


def build_task_list(
    *, output_dir: Path, problems: List[MultiPLEProblem], max_completions: int
) -> List[MultiPLEProblem]:
    """
    Goes through every NAME.json.gz file in output_dir, counting the number of
    existing completions. Returns N copies of each problem, where N is the
    number of new completions needed to reach max_completions.
    """
    results = []
    for problem in problems:
        name = problem["name"]
        problem_filename = output_dir / f"{name}.json.gz"
        for _ in range(missing_completions(problem_filename, max_completions)):
            results.append(problem)

    return results


def stop_at_stop_token(decoded_string, stop_tokens):
    """
    Produces the prefix of decoded_string that ends at the first occurrence of
    a stop_token.

    WARNING: the decoded_string *must not* include the prompt, which may have stop tokens
    itself.
    """
    min_stop_index = len(decoded_string)
    for stop_token in stop_tokens:
        stop_index = decoded_string.find(stop_token)
        if stop_index != -1 and stop_index < min_stop_index:
            min_stop_index = stop_index
    return decoded_string[:min_stop_index]


def postprocess_completion(
    lang: str,
    problem_filename: Path,
    stop_tokens: List[str],
    prompt: str,
    completion: str,
) -> str:
    if completion.startswith("```"):
        # Assume that this is a complete Markdown block.
        lines = completion.split("\n")
        lines = lines[1:-1]
        completion = "\n".join(lines)
        tqdm.write(f"Postprocessed markdown output for {problem_filename}")

    p = completion[: len(prompt)]
    s = completion[len(prompt) :]
    s = stop_at_stop_token(s, stop_tokens)
    return p + s


def save_first_result(
    top_p: float,
    max_tokens: int,
    temperature: float,
    problem_filename: Path,
    result: MultiPLEResult,
) -> None:
    lang = result["language"]
    with gzip.open(problem_filename, "wt") as f:
        the_dict = {
            "name": result["name"],
            "language": lang,
            "top_p": top_p,
            "max_tokens": max_tokens,
            "temperature": temperature,
            # Yes, the prompt is empty. Federico's hack. Although we instruct
            # the model to repeat the prompt verbatim in the completion,
            # it may not do so exactly. But, that would be a spurious error.
            # So, we set the prompt to be empty and let each completion have
            # its own copy of the prompt returned by the LLM, which may not
            # be exactly the same. What we have found is that the LLM sometimes
            # fails to repeat the docstring or parameter names exactly, but the
            # code still passes all tests.
            "prompt": "",
            # We save the original prompt here for sanity checking. But, this
            # field gets ignored by the MultiPL-E evaluation container.
            "original_prompt": result["prompt"],
            "tests": result["tests"],
            "stop_tokens": result["stop_tokens"],
            "completions": [
                postprocess_completion(
                    lang,
                    problem_filename,
                    result["stop_tokens"],
                    result["prompt"],
                    result["completion"],
                )
            ],
            "raw_completions": [result["completion"]],
            "reasoning": [result["reasoning"]],
        }
        json.dump(the_dict, f, indent=4)


def append_result(problem_filename: Path, result: MultiPLEResult) -> None:
    with gzip.open(problem_filename, "rt") as f:
        the_dict = json.load(f)
    lang = the_dict["language"]
    with gzip.open(problem_filename, "wt") as f:
        the_dict["completions"].append(
            postprocess_completion(
                lang,
                problem_filename,
                the_dict["stop_tokens"],
                # The "prompt" field is blank.
                the_dict["original_prompt"],
                result["completion"],
            )
        )
        the_dict["raw_completions"].append(result["completion"])
        the_dict["reasoning"].append(result["reasoning"])
        json.dump(the_dict, f, indent=4)


async def do_bench(
    *,
    name: str,
    lang: str,
    name_override: Optional[str],
    root_dataset: str,
    temperature: float,
    num_concurrent: int,
    max_tokens: int,
    max_completions: int,
    top_p: float,
) -> None:
    lm = dspy.LM(
        name,
        model_type="chat",
        temperature=temperature,
        top_p=top_p,
        max_tokens=max_tokens,
        cache=False,
    )
    dspy.configure(lm=lm)

    try:
        lm("Say this is a test")
    except Exception as e:
        print(e)
        print(
            "\nThe model did not respond to a simple test. Is it correctly configured?"
        )
        exit(1)

    problems = datasets.load_dataset(
        "nuprl/MultiPL-E", f"{root_dataset}-{lang}", split="test"
    )

    output_dir = Path(
        f"{root_dataset}-{lang}-{name_override or name}-{temperature}-reworded"
    )
    print(f"Output will be saved to {output_dir}")
    if not output_dir.exists():
        output_dir.mkdir()

    sema = asyncio.Semaphore(num_concurrent)

    async def do_task(task: MultiPLEProblem) -> MultiPLEResult:
        async with sema:
            try:
                prediction = await completion_cot.aforward(lang=lang, prefix=task["prompt"])
                return {**task, **prediction.toDict()}
            except Exception as e:
                tqdm.write(f"Error for {task['name']}: {e}")
                return {**task, "completion": "", "reasoning": f"DSPy error: {e}"}

    tasks = build_task_list(
        output_dir=output_dir,
        problems=problems,
        max_completions=max_completions,
    )

    task_results = [asyncio.create_task(do_task(task)) for task in tasks]

    for future in tqdm(asyncio.as_completed(task_results), total=len(task_results)):
        # result is the dictionary from do_task
        result = await future
        name = result["name"]
        problem_filename = output_dir / f"{name}.json.gz"

        if not problem_filename.exists():
            save_first_result(top_p, max_tokens, temperature, problem_filename, result)
        else:
            append_result(problem_filename, result)


async def main() -> None:
    parser = argparse.ArgumentParser()

    subparsers = parser.add_subparsers(dest="command")
    bench = subparsers.add_parser(
        "bench", help="Generation benchmark completions MultiPL-E"
    )
    single = subparsers.add_parser(
        "single", help="Test the model with a single prompt. Useful for debugging."
    )

    bench.add_argument(
        "--name", type=str, required=True, help="Model name in LiteLLM format"
    )
    bench.add_argument(
        "--lang", type=str, required=True, help="Programming language to benchmark"
    )
    bench.add_argument(
        "--name-override",
        type=str,
        required=False,
        help="Override model name for output directory",
    )
    bench.add_argument(
        "--root-dataset",
        choices=["humaneval", "mbpp"],
        default="humaneval",
        help="Root dataset to use for completions",
    )
    bench.add_argument(
        "--temperature", type=float, required=True, help="Temperature for completions"
    )
    bench.add_argument(
        "--num-concurrent",
        type=int,
        default=16,
        help="Number of completions to generate concurrently",
    )
    bench.add_argument(
        "--max-tokens",
        type=int,
        default=2048,
        help="Maximum number of tokens in a response. Note that the chain-of-thought produced by a model before it ",
    )
    bench.add_argument(
        "--top-p",
        type=float,
        default=0.95,
        help="Top-p value for sampling",
    )
    bench.add_argument(
        "--max-completions",
        type=int,
        required=True,
        help="Maximum number of completions to generate",
    )

    single.add_argument(
        "--name", type=str, required=True, help="Model name in LiteLLM format"
    )
    single.add_argument(
        "--lang", type=str, required=True, help="Programming language to benchmark"
    )
    single.add_argument(
        "--max-tokens",
        type=int,
        required=False,
        default=2048,
        help="Maximum number of tokens in a response. Note that the chain-of-thought produced by a model before it ",
    )
    single.add_argument(
        "--temperature", type=float, default=0.2, help="Temperature for completions"
    )
    single.add_argument(
        "--top-p", type=float, default=0.95, help="Top-p value for sampling"
    )
    single.add_argument(
        "--prefix", type=str, required=True, help="Prefix of the program to complete"
    )

    args = parser.parse_args()
    kwargs = dict(vars(args))
    del kwargs["command"]

    if args.command == "bench":
        await do_bench(**kwargs)
    elif args.command == "single":
        await do_single(**kwargs)
    else:
        parser.print_help()


if __name__ == "__main__":
    asyncio.run(main())
