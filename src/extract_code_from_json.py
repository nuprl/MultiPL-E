# A script to extract programs from .results.json files
import json
import argparse
from pathlib import Path

def main():

    args = argparse.ArgumentParser()

    args.add_argument("--input", help="The json file storing the evaluated completions.", type=Path, required=True)
    # list of programs to extract
    args.add_argument("--programs", help="The numbers associated with each program in the results.", type=int, nargs="+", required=True)

    args.add_argument("--lang", help="The file extension to save the program as.", type=str, required=True)

    args.add_argument("--output-dir", type=Path, default="output/")

    args = args.parse_args()

    args.output_dir.mkdir(parents=True, exist_ok=True)

    with open(args.input, "r") as f:
        result_json = json.load(f) 
        results = result_json["results"]

        for i in args.programs:
            with open(args.output_dir / f"{i}-{results[i]['status']}.{args.lang}", "w") as f:
                f.write(results[i]["program"])

if __name__ == "__main__":
    main()