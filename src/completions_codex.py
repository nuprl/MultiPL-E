"""
This script produces completions from Codex.

To run this script:

1. Prepare a directory with YAML files using prepare_prompts_yaml.py.

2. Create a file called model_keys.csv with the columns:

   Label,Key
   Arjun,OPENAI_API_KEY1
   Abhinav,OPENAI_API_KEY2
   ...

   Your OpenAI API key will only work if you are in the Codex beta.

Then run:

python3 completions_codex.py --dir <TARGET_DIR> --max-samples=32

The TARGET_DIR must be the same as the one used in prepare_prompts_yaml.py.

"""
import csv
import openai_multimodel_multikey
import asyncio
from problem_yaml import Problem
import argparse
import sys
from pathlib import Path
from tqdm import tqdm

async def codex_completion(
    model: str,
    prompt: str, stop_tokens, max_to_generate: int, temperature: float, n: int
):
        response = await completions.completion(
            model=model,
            prompt=prompt,
            max_tokens=max_to_generate,
            temperature=temperature,
            n=n,
            top_p=0.95,
            stop=[ s for s in stop_tokens])
        return  response

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

async def parameterized_main(max_to_generate: int):
    args = argparse.ArgumentParser()
    args.add_argument(
        "--dir", type=str, required=True, help="Directory with problem YAMLs"
    )
    args.add_argument(
        "--temperature", type=float, required=True)
    args.add_argument("--max-samples", type=int, required=True)
    args.add_argument("--model", type=str, required=True)
    args.add_argument("--limit-completions", type=int, default=200)
    args = args.parse_args()

    dir = Path(args.dir)
    if not dir.exists():
        print("Directory does not exist: {}".format(dir))
        sys.exit(1)

    if args.model == "davinci":
        args.model = "code-davinci-002"

    problems = list(filter(lambda f: not f.name.endswith(".results.yaml"), sorted(dir.glob("*.yaml"))))

    problem_completions = (process_problem_yaml(problem_yaml_path, args, max_to_generate) for problem_yaml_path in problems)
    await asyncio.gather(*problem_completions)


async def main():
    global completions

    # Load the model keys from the CSV file.
    with open("model_keys.csv") as f:
        reader = csv.DictReader(f)
        rows = list(reader)
    model_keys = [row["Key"] for row in rows if not row["Key"].startswith("http://")]
    other_models = [ (row["Model"], row["Key"]) for row in rows if row["Key"].startswith("http://")]
    
    completions = openai_multimodel_multikey.MultiModelMultiKeyCompletion(model_keys, other_models)
    
    await parameterized_main(max_to_generate=512)


if __name__ == "__main__":
    asyncio.run(main())
