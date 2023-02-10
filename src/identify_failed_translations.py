# Finds all the problem numbers that failed to translate.
import argparse
import json
from pathlib import Path
import itertools

def main():
    args = argparse.ArgumentParser()

    args.add_argument("--originals", help="Directory of the original problems", type=Path, default="datasets/originals")
    args.add_argument("--prompts", help="The generated prompts from the problems to find which problems failed", type=Path, required=True)

    args = args.parse_args()

    problem_names = [p.name[:-3] for p in itertools.chain(Path(args.originals).glob("*.py"))]
    
    with open(args.prompts, "r") as f:
        results = json.load(f)

    properly_translated = [result["name"] for result in results]
    
    failed_translations = []
    for name in problem_names:
        if name not in properly_translated:
            failed_translations.append(name)

    print("Failed to translate:")
    [print(failure) for failure in failed_translations]

if __name__ == "__main__":
    main()