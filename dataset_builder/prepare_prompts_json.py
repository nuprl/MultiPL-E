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

    args.add_argument(
        "--add-canonical-to-prompt",
        action="store_true",
        help="Add the canonical function implementation to the prompt. Useful for assisting the model in inferring the correct function.",
    )

    args.add_argument(
        "--skip-failing-tests",
        action="store_true",
        help="Skips tests that fail to translate. By default, if a test fails to translate, the entire problem is skipped.",
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

    results = []
    originals = sorted(list_originals(args.originals).values())
    for original in originals:
        original_name = original.name.split(".")[0]
        print(f"Processing {original_name}...")

        result = translate_prompt_and_tests(
            original,
            translator,
            args.doctests,
            args.prompt_terminology,
            add_canonical_to_prompt=args.add_canonical_to_prompt,
            panic_on_test_fail=not args.skip_failing_tests,
        )

        if result is None:
            print(f"Skipping {original_name}")
            continue

        (prompt, tests) = result
        problem = {
            "name": original_name,
            "language": translator.file_ext(),
            "prompt": prompt.encode('utf-8', 'ignore').decode('utf-8'),
            "doctests": args.doctests.encode('utf-8', 'ignore').decode('utf-8'),
            "original": str(original.absolute()),
            "prompt_terminology": args.prompt_terminology,
            "tests": tests.encode('utf-8', 'ignore').decode('utf-8'),
            "stop_tokens": get_stop_from_translator(translator),
        }
        results.append(problem)

    print(f"Translation stats:")
    print(f"  Num originals: {len(originals)}")
    print(f"  Num translated: {len(results)}")
    print(f"  Translation ratio: {len(results) / len(originals):.2f}")

    with open(args.output, "w") as f:
        for item in results:
            json.dump(item, f)
            f.write("\n")


if __name__ == "__main__":
    main()
