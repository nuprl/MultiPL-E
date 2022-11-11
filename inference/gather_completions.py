"""
This script produces completions from Codex, or any model that fudges the
completions API.

To run this script, create a file called model_keys.csv with the columns:

```
Label,Model,Key
My OpenAI Key,,sk-YOUR-OPENAI-KEY
A100,codegen,http://localhost:8080/v1/completions
A40,incoder,http://localhost:8080/v1/completions
```
   
OpenAI API keys will only work if you are in the Codex beta.

Then run:

python3 completions_codex.py --dir <TARGET_DIR> --max-samples=32

The max_samples argument should be a reasonable number. Too small, and
you won't be using your GPU very efficently. Too high, and you'll crash
a naive implementation.
"""
import csv
import openai_multimodel_multikey
import asyncio
import argparse
import json
import sys
from pathlib import Path
import logging

MAX_TO_GENERATE = 512

# problem is a dict. Relevant keys are "name" and "prompt".
async def process_problem_json(completion, problem, args, max_to_generate):
    target_dir_path = Path(args.target_dir)
    completions_path = target_dir_path / (problem["name"] + ".json")

    target_dir_path.mkdir(exist_ok=True)

    if completions_path.exists():
        with completions_path.open() as f:
            completion_results = json.load(f)
    else:
        # Copy problem to completion_results
        completion_results = problem.copy()
        completion_results["completions"] = []

    # completion_results has the same keys as problem, and one extra key "completions".
    num_completions_required = args.limit_completions - len(
        completion_results["completions"]
    )

    if num_completions_required < 1:
        return

    while num_completions_required > 0:
        num_samples = min(num_completions_required, args.max_samples)

        completions = await completion(
            model=args.model,
            prompt=problem["prompt"],
            max_tokens=max_to_generate,
            temperature=args.temperature,
            n=num_samples,
            top_p=0.95,
            # NOTE(arjun): the list builder addresses yamlize garbage
            stop=[s for s in problem["stop_tokens"]],
        )
        completion_results["completions"].extend(completions)
        with completions_path.open("w") as f:
            f.write(json.dumps(completion_results, indent=2))
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
    args = argparse.ArgumentParser()
    args.add_argument("--prompts-file", type=str, required=True, help="File of prompts")
    args.add_argument(
        "--target-dir",
        type=str,
        required=True,
        help="Directory to write completions to",
    )
    args.add_argument("--temperature", type=float, required=True)
    args.add_argument("--max-samples", type=int, required=True)
    args.add_argument("--model", type=str, required=True)
    args.add_argument("--limit-completions", type=int, default=200)
    args.add_argument("--log-file", type=str, default=None)
    args.add_argument("--log-level", type=str, default="INFO")
    args.add_argument(
        "--local-model",
        action="store_true",
        help="If set, --model is the name of a model file to load",
    )
    args = args.parse_args()

    prompts_file = Path(args.prompts_file)
    if not prompts_file.exists():
        print("File does not exist: {}".format(prompts_file))
        sys.exit(1)

    if args.model == "davinci":
        args.model = "code-davinci-002"

    configure_logging(args)

    with prompts_file.open() as f:
        problems = json.load(f)

    if args.local_model:
        completions = __import__(args.model).completion
        for problem in problems:
            await process_problem_json(
                completions, problem, args, max_to_generate=MAX_TO_GENERATE
            )
    else:
        # Load the model keys from the CSV file.
        with open("model_keys.csv") as f:
            reader = csv.DictReader(f)
            rows = list(reader)
        model_keys = [
            row["Key"] for row in rows if not row["Key"].startswith("http://")
        ]
        other_models = [
            (row["Model"], row["Key"])
            for row in rows
            if row["Key"].startswith("http://")
        ]
        async with openai_multimodel_multikey.MultiModelMultiKeyCompletion(
            model_keys, other_models
        ) as completions:
            problem_completions = (
                process_problem_json(
                    completions.completion,
                    problem,
                    args,
                    max_to_generate=MAX_TO_GENERATE,
                )
                for problem in problems
            )
            await asyncio.gather(*problem_completions)


if __name__ == "__main__":
    asyncio.run(main())
