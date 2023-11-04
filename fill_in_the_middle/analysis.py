import json
from pathlib import Path
import argparse
from itertools import groupby


def grouper(item):
    return (item["model"], item["language"], item["fim_mode"] if "fim_mode" in item else "PSM")

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("PATH", nargs="+", type=Path)
    args = parser.parse_args()

    results = [ ]
    for p in args.PATH:
        with p.open("rt") as f:
            results.extend([ json.loads(line) for line in f ])
    results.sort(key=grouper)
    groups = groupby(results, key=grouper)
    print("Model,Language,Mode,Exact Match Rate")
    for (model, language, mode), items in groups:
        lang_problems = list(items)
        lang_successes = sum(1 for p in lang_problems if p["exact_match"])
        exact_match_rate = lang_successes / len(lang_problems)
        print(f"{model},{language},{mode},{exact_match_rate:.2f}")



if __name__ == "__main__":
    main()



