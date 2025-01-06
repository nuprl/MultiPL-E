import datasets
import argparse
import gzip
import json
from pathlib import Path
from tqdm import tqdm
import sys
from typing import List

DATASET_REVISION = "3a9e8d226c127392ce81dca29d09f33f0ce3247d"


def partial_arg_parser():
    args = argparse.ArgumentParser()

    args.add_argument(
        "--output-dir",
        type=str,
        help="Directory in which to place JSON files with completions. The default is root_dataset-lang-model_name-temperature-reworded",
    )

    args.add_argument(
        "--output-dir-prefix", type=str, help="Prefix for the output directory"
    )

    args.add_argument(
        "--use-local",
        action="store_true",
        help="Use this flag when running from local prompts.",
    )

    # Reuired when use local is passed
    args.add_argument(
        "--dataset",
        type=str,
        required="--use-local" in sys.argv,
        help="The local dataset in JSON format to get from this computer.",
    )
    # Only required when use local is not passed
    args.add_argument(
        "--lang",
        type=str,
        required="--use-local" not in sys.argv,
        help="Target language for completions",
    )
    args.add_argument(
        "--root-dataset",
        type=str,
        required="--use-local" not in sys.argv,
        help="either mbpp or humaneval",
    )
    args.add_argument("--temperature", type=float, required=True)
    args.add_argument(
        "--input-start-index",
        type=int,
        help="Index into the dataset. If omitted, starts from the beginning",
    )
    args.add_argument(
        "--input-limit", type=int, help="Number of items to process from the dataset"
    )
    args.add_argument("--completion-limit", type=int, default=200)
    args.add_argument(
        "--batch-size", type=int, default=16, help="Number of completions to batch"
    )
    args.add_argument(
        "--prompt-prefix", type=str, help="A prefix to prepend to every prompt"
    )
    args.add_argument(
        "--max-tokens",
        type=int,
        default=1024,
        help="Maximum number of tokens to generate",
    )
    args.add_argument(
        "--top-p",
        type=float,
        default=0.95,
        help="Top-p value for sampling",
    )
    return args


def make_main(args, model_name, gen_completions):

    assert "-" not in model_name, "Model name must not have hyphens"

    if args.output_dir is None:
        args.output_dir = (
            (
                f"{args.root_dataset}-{args.lang}-{model_name}-{args.temperature}-reworded"
            )
            if not args.use_local
            else (
                f"{args.dataset.split('/')[-1].split('.')[0]}-{model_name}-{args.temperature}-reworded"
            )
        )

    if args.output_dir_prefix is not None:
        args.output_dir = f"{args.output_dir_prefix}/{args.output_dir}"

    exp_dir = Path(args.output_dir)
    if not exp_dir.exists():
        exp_dir.mkdir()

    if args.use_local:
        problems = datasets.load_dataset(
            "json", data_files=args.dataset, split="train")
    else:
        problems = datasets.load_dataset(
            "nuprl/MultiPL-E", f"{args.root_dataset}-{args.lang}", revision=DATASET_REVISION, split="test"
        )

    start_index = args.input_start_index if args.input_start_index is not None else 0
    stop_index = min(
        len(problems),
        start_index + args.input_limit
        if args.input_limit is not None
        else len(problems),
    )
    start_index = args.input_start_index if args.input_start_index is not None else 0
    stop_index = min(
        len(problems),
        start_index + args.input_limit
        if args.input_limit is not None
        else len(problems),
    )
    problems = problems.select(range(start_index, stop_index))

    # Read all existing completions
    all_completions = dict(read_completions(
        exp_dir, args.temperature, args.top_p, args.max_tokens, problem) for problem in problems)

    # Generate a list of prompts, including multiple copies when needed.
    problem_list = []
    stop: List[str] = None
    for completions in all_completions.values():

        if stop is None:
            stop = completions["stop_tokens"]
        else:
            assert stop == completions["stop_tokens"], "Stop tokens must be the same for all completions"

        assert completions["temperature"] == args.temperature, "Temperature must be the same for all completions"

        if len(completions["completions"]) >= args.completion_limit:
            continue

        num_new_completions = args.completion_limit - \
            len(completions["completions"])

        if args.prompt_prefix is not None:
            prompt = args.prompt_prefix + completions["prompt"]
        else:
            prompt = completions["prompt"]
        item = {"prompt": prompt, "name": completions["name"]}

        problem_list.extend([item for _ in range(num_new_completions)])

    # Break problem_list into batches of size args.batch_size.
    problem_list = [problem_list[i:i+args.batch_size]
                    for i in range(0, len(problem_list), args.batch_size)]

    for batch in tqdm(problem_list, unit="batch"):
        new_completions = gen_completions(
            prompts=[item["prompt"] for item in batch],
            max_tokens=args.max_tokens,
            temperature=args.temperature,
            top_p=args.top_p,
            stop=stop
        )
        modified_problems = set()
        for item, a_completion in zip(batch, new_completions):
            # if a_completion is just a string, run normal completion
            if isinstance(a_completion, str):
                completion = a_completion
            else:
                # assert it's a 3-tuple
                assert len(
                    a_completion) == 3, "Completion must be a 3-tuple or a string"
                completion, logprob, num_tokens = a_completion
                if "tokens_info" not in all_completions[item["name"]]:
                    all_completions[item["name"]]["tokens_info"] = []
                all_completions[item["name"]]["tokens_info"].append(
                    {"cumulative_logprob": logprob, "len": num_tokens})

            all_completions[item["name"]
                            ]["completions"].append(completion)
            modified_problems.add(item["name"])

        for name in modified_problems:
            with gzip.open(exp_dir / f"{name}.json.gz", "wt") as f:
                f.write(json.dumps(all_completions[name]))


def read_completions(exp_dir, temperature, top_p, max_tokens, problem):
    problem_filename = exp_dir / f"{problem['name']}.json.gz"
    if problem_filename.exists():
        with gzip.open(problem_filename, "rt") as f:
            existing = json.loads(f.read())
            return (existing["name"], existing)

    new_completions = {
        "name": problem["name"],
        "language": problem["language"],
        "temperature": temperature,
        "top_p": top_p,
        "max_tokens": max_tokens,
        "prompt": problem["prompt"],
        "tests": problem["tests"],
        "completions": [],
        "stop_tokens": problem["stop_tokens"],
    }
    return (new_completions["name"], new_completions)


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
