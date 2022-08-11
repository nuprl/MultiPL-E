"""
This script produces completions from Codex, or any model that fudges the
completions API. For an example of a fudge:

https://github.com/arjunguha/research_model_server

To run this script, create a file called model_keys.csv with the columns:

```
Label,Model,Key
My OpenAI Key,,sk-YOUR-OPENAI-KEY
Luna's OpenAI Key,,sk-LUNAS-KEY
Wellesley A6000,incoder,http://localhost:8080/v1/completions
Steven Holtzen's A40,incoder,http://localhost:8080/v1/completions
```
   
OpenAI API key will only work if you are in the Codex beta.

Then run:

python3 completions_codex.py --dir <TARGET_DIR> --max-samples=32

The max_samples argument should be a reasonable number. Too small, and
you won't be using your GPU very efficently. Too high, and you'll crash
a naive implementation.
"""
import csv
import openai_multimodel_multikey
import asyncio
from problem_yaml import Problem
import argparse
import sys
from pathlib import Path
import logging


async def codex_completion(
    model: str,
    prompt: str,
    stop_tokens,
    max_to_generate: int,
    temperature: float,
    n: int,
):
    response = await completions.completion(
        model=model,
        prompt=prompt,
        max_tokens=max_to_generate,
        temperature=temperature,
        n=n,
        top_p=0.95,
        stop=[s for s in stop_tokens],
    )
    return response


async def process_problem_yaml(problem_yaml_path, args, max_to_generate):
    with problem_yaml_path.open() as f:
        problem = Problem.load(f)

    num_completions_required = args.limit_completions - len(problem.completions)

    if num_completions_required < 1:
        return

    while num_completions_required > 0:
        num_samples = min(num_completions_required, args.max_samples)

        completions = await codex_completion(
            model=args.model,
            prompt=problem.prompt,
            stop_tokens=problem.stop_tokens,
            max_to_generate=max_to_generate,
            temperature=args.temperature,
            n=num_samples,
        )
        problem.completions.extend(completions)
        with problem_yaml_path.open("w") as f:
            f.write(Problem.dump(problem))
        num_completions_required -= num_samples


def configure_logging(args):
    format_str = "%(asctime)s - %(name)s - %(levelname)s - %(message)s"
    if args.log_file:
        logging.basicConfig(
            filename=args.log_file, level=args.log_level, format=format_str
        )
    else:
        logging.basicConfig(level=args.log_level, format=format_str)


async def main():
    global completions

    args = argparse.ArgumentParser()
    args.add_argument(
        "--dir", type=str, required=True, help="Directory with problem YAMLs"
    )
    args.add_argument("--temperature", type=float, required=True)
    args.add_argument("--max-samples", type=int, required=True)
    args.add_argument("--model", type=str, required=True)
    args.add_argument("--limit-completions", type=int, default=200)
    args.add_argument("--log-file", type=str, default=None)
    args.add_argument("--log-level", type=str, default="INFO")
    args = args.parse_args()

    dir = Path(args.dir)
    if not dir.exists():
        print("Directory does not exist: {}".format(dir))
        sys.exit(1)

    if args.model == "davinci":
        args.model = "code-davinci-002"

    configure_logging(args)

    # Load the model keys from the CSV file.
    with open("model_keys.csv") as f:
        reader = csv.DictReader(f)
        rows = list(reader)
    model_keys = [row["Key"] for row in rows if not row["Key"].startswith("http://")]
    other_models = [
        (row["Model"], row["Key"]) for row in rows if row["Key"].startswith("http://")
    ]

    async with openai_multimodel_multikey.MultiModelMultiKeyCompletion(
        model_keys, other_models
    ) as completions:
        problems = list(
            filter(
                lambda f: not f.name.endswith(".results.yaml"),
                sorted(dir.glob("*.yaml")),
            )
        )

        problem_completions = (
            process_problem_yaml(problem_yaml_path, args, max_to_generate=512)
            for problem_yaml_path in problems
        )
        await asyncio.gather(*problem_completions)


if __name__ == "__main__":
    asyncio.run(main())
