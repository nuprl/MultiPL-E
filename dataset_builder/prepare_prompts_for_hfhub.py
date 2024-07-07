"""
This script prepares all prompts for a particular language and pushes them to
the Hugging Face Hub.
"""

import argparse
import sys
import datasets
from generic_translator import list_originals, translate_prompt_and_tests, get_stop_from_translator
from pathlib import Path
import json
import re

def extract_number(name):
    match = re.search(r'\d+', name)
    if match:
        return int(match.group())
    else:
        assert False



def main():
    args = argparse.ArgumentParser()
    args.add_argument(
        "--lang", type=str, required=True, help="Language to translate to"
    )

    args.add_argument(
        "--doctests",
        type=str,
        default="transform",
        help="What to do with doctests: keep, remove, or transform",
    )

    args.add_argument(
        "--prompt-terminology",
        type=str,
        default="reworded",
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

    args.add_argument("--dataset-name", type=str, default="nuprl-staging/MultiPL-E")
    
    args.add_argument("--original-dataset", type=str, required=True)

    args.add_argument("--originals", type=str, required=True)

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

    results.sort(key=lambda x: extract_number(x["name"]))


    print(f"Translation stats:")
    print(f"  Num originals: {len(originals)}")
    print(f"  Num translated: {len(results)}")
    print(f"  Translation ratio: {len(results) / len(originals):.2f}")
    dataset = datasets.Dataset.from_list(results)

    config_lang = translator.file_ext()
    if config_lang == "go_test.go":
        config_lang = "go"

    
    config_name = f"{args.original_dataset}-{config_lang}"
    
    dataset.push_to_hub(
        args.dataset_name, split="test", config_name=config_name)



if __name__ == "__main__":
    main()
