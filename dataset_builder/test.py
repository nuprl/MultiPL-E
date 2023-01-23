"""
Use this program to test a new MultiPL-E translator. If it succeeds, it will
display the translated prompt, the translated tests, and the stop tokens.

Example:

cd dataset_builder
python3 test.py  humaneval_to_ts ../datasets/originals/HumanEval_53_add.py
"""

import argparse
import sys
from generic_translator import list_originals, translate_prompt_and_tests, get_stop_from_translator
from pathlib import Path

def test_translate(translator: str, original: Path, doctests: str, terminology: str):
    translator = __import__(translator).Translator()
    
    if terminology not in ["verbatim", "reworded"]:
        print(f"Invalid terminology option: {terminology}")
        sys.exit(1)

    if doctests not in ["keep", "remove", "transform"]:
        print(f"Unknown doctests option: {doctests}")
        sys.exit(1)


    result = translate_prompt_and_tests(original, translator, doctests, terminology)
    if result is None:
        print(f"Error occurred")
        sys.exit(1)

    (prompt, tests) = result
    print(prompt)
    print("*" * 80)
    print(tests)
    print("*" * 80)
    print(get_stop_from_translator(translator))
    print("*" * 80)    
    print("Translation succeeded. Examine the output above to verify that it is correct.")
    

def main():
    args = argparse.ArgumentParser()
    args.add_argument(
        "translator", type=str, help="Name of the translator file, without the .py extension"
    )
    args.add_argument(
        "original", type=Path, help="File to translate"
    )

    args.add_argument(
        "--doctests",
        type=str,
        default="keep",
        help="What to do with doctests: keep, remove, or transform",
    )

    args.add_argument(
        "--terminology",
        type=str,
        default="verbatim",
        help="How to translate terminology in prompts: verbatim or reworded"
    )

    args = args.parse_args()
    test_translate(**vars(args))


if __name__ == "__main__":
    main()
