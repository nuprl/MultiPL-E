"""
This script prepares all prompts for a particular language as YAML files (one
per benchmark). The script evaluate_prompts_yamlinplace.py will then update the
YAML with completions from an LLM.

Estimate of how big each YAML file gets:

- length of prompt + completion = 2048 tokens
- Each token is ~4 characters
- 200 samples per prompt
- (2048 * 4 * 200) / 1024 / 1024 = 1.5 MB of data.

This ignores the tests cases, but it should be compact enough.

"""

import argparse
import sys
from generic_translator import list_originals, translate_prompt_and_tests
from pathlib import Path
from humaneval_to_ruby import RubyTranslator
from problem_yaml import Problem

TRANSLATORS = {"ruby": RubyTranslator("rb")}


def main():
    args = argparse.ArgumentParser()
    args.add_argument(
        "--lang", type=str, required=True, help="Language to translate to"
    )
    args.add_argument(
        "--target-dir", type=str, required=True, help="Directory to write YAML files to"
    )
    args.add_argument(
        "--doctests",
        type=str,
        default="keep",
        help="What to do with doctests: keep, remove, or transform",
    )

    args = args.parse_args()

    if args.lang not in TRANSLATORS:
        print(f"Unknown language: {args.lang}")
        sys.exit(1)

    if args.doctests not in ["keep", "remove", "transform"]:
        print(f"Unknown doctests option: {args.doctests}")
        sys.exit(1)

    target_dir = Path(args.target_dir)
    if not target_dir.exists():
        print(f"Target directory {target_dir} does not exist")
        sys.exit(1)

    translator = TRANSLATORS[args.lang]

    for original in list_originals():
        # original.name with .yaml extension
        original_name = original.name.split(".")[0]
        target_yaml_path = target_dir / (original_name + ".yaml")
        if target_yaml_path.exists():
            print(f"Skipping {target_yaml_path}")
            continue

        result = translate_prompt_and_tests(
            original, translator, args.doctests
        )
        if result is None:
            continue

        (prompt, tests) = result
        problem_file = Problem()
        problem_file.name = original_name
        problem_file.language = args.lang
        problem_file.prompt = prompt
        problem_file.tests = tests
        problem_file.stop_tokens = translator.stop
        problem_file.completions = []
        output_text = Problem.dump(problem_file)
        with target_yaml_path.open("w") as f:
            f.write(output_text) # Avoid calling functions that may crash here


if __name__ == "__main__":
    main()
