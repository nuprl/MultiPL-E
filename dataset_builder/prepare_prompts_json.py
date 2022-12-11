"""
This script prepares all prompts for a particular language as YAML files (one
per benchmark). The scripts completions_*.py will then update each file with
completions from an LLM.

To run this script:

1. mkdir ../datasets/LANGUAGE-keep-MODEL

  where MODEL is either davinci or incoder.

2. python3 prepare_prompts_yaml.py --lang LANGUAGE --target-dir ../datasets/LANGUAGE-keep-MODEL --doctests keep

  This will create lots of YAML files in TARGET-DIR. You should commit these files to the repository.

3. Now run either completions_codex.py or completions_incoder.py.


Estimate of how big each YAML file gets:

- length of prompt + completion = 2048 tokens
- Each token is ~4 characters
- 200 samples per prompt
- (2048 * 4 * 200) / 1024 / 1024 = 1.5 MB of data.

This ignores the tests cases, but it should be compact enough.

"""

import argparse
import sys
from generic_translator import list_originals, translate_prompt_and_tests, get_stop_from_translator
from pathlib import Path
import json

def main():
    args = argparse.ArgumentParser()
    args.add_argument(
        "--lang", type=str, required=True, help="Language to translate to"
    )
    args.add_argument(
        "--output", type=str, required=True, help="Target JSON file"
    )

    args.add_argument(
        "--doctests",
        type=str,
        default="keep",
        help="What to do with doctests: keep, remove, or transform",
    )

    args.add_argument(
        "--prompt-terminology",
        type=str,
        default="verbatim",
        help="How to translate terminology in prompts: verbatim or reworded"
    )

    args.add_argument("--originals", type=str, default="../datasets/originals")

    args = args.parse_args()

    translator = __import__(args.lang[:-3]).Translator()

    if args.prompt_terminology not in ["verbatim", "reworded"]:
        print(f"Invalid prompt-terminology option: {args.prompt_terminology}")
        sys.exit(1)

    if args.doctests not in ["keep", "remove", "transform"]:
        print(f"Unknown doctests option: {args.doctests}")
        sys.exit(1)

    results = [ ]
    for original in list_originals(args.originals).values():
        original_name = original.name.split(".")[0]
        print(f"Processing {original_name}...")

        result = translate_prompt_and_tests(
            original, translator, args.doctests, args.prompt_terminology
        )
        if result is None:
            print(f"Skipping {original_name}")
            continue

        (prompt, tests) = result
        problem = {
            "name": original_name,
            "language": translator.file_ext(),
            "prompt": prompt,
            "doctests": args.doctests,
            "original": str(original.absolute()),
            "prompt_terminology": args.prompt_terminology,
            "tests": tests,
            "stop_tokens": get_stop_from_translator(translator),
        }
        results.append(problem)
    with open(args.output, "w") as f:
        json.dump(results, f, indent=2)


if __name__ == "__main__":
    main()
