"""
This code must work on Python 3.8.

This is the main loop for completions_*.py.
"""
from problem_yaml import Problem
import argparse
import sys
from pathlib import Path


def parameterized_main(completion_function, max_to_generate):
    args = argparse.ArgumentParser()
    args.add_argument(
        "--dir", type=str, required=True, help="Directory with problem YAMLs"
    )
    args.add_argument("--max-samples", type=int, required=True, default=100)
    args = args.parse_args()

    dir = Path(args.dir)
    if not dir.exists():
        print("Directory does not exist: {}".format(dir))
        sys.exit(1)

    for problem_yaml_path in sorted(dir.glob("*.yaml")):
        with problem_yaml_path.open() as f:
            problem = Problem.load(f)
        num_completions_required = 200 - len(problem.completions)

        if num_completions_required < 1:
            print(
                f"Skipping {problem_yaml_path} because it already has enough completions"
            )
            continue

        while num_completions_required > 0:
            num_samples = min(num_completions_required, args.max_samples)
            print(f"Generating {num_samples} completions for {problem_yaml_path}")
            completions = completion_function(
                prompt=problem.prompt,
                stop_tokens=problem.stop_tokens,
                max_to_generate=max_to_generate,
                temperature=0.2,
                n=num_samples,
            )
            problem.completions.extend(completions)
            with problem_yaml_path.open("w") as f:
                f.write(Problem.dump(problem))
            num_completions_required -= num_samples
