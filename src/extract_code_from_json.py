# A script to extract programs from .results.json files
import json
import argparse
from pathlib import Path

def main():

    args = argparse.ArgumentParser()

    args.add_argument("--input", type=Path, required=True)
    # list of files to extract
    args.add_argument("--files", type=int, nargs="+", required=True)

    args.add_argument("--output-dir", type=Path, default="output/")

    args = args.parse_args()

    args.output_dir.mkdir(parents=True, exist_ok=True)

    with open(args.input, "r") as f:
        result_json = json.load(f) 
        results = result_json["results"]

        for i in args.files:
            with open(args.output_dir / f"{i}-{results[i]['status']}.fsx", "w") as f:
                f.write(results[i]["program"])

if __name__ == "__main__":
    main()