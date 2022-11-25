"""
NOTE: Does not support reporting missing complementions for variations that are not "reworded"
"""
from util import gunzip_json
import argparse
from pathlib import Path
from concurrent.futures import ProcessPoolExecutor
import sys
import tqdm
import math
from dataset_builder.libexperiments import all_experiments, Experiment
from typing import List
import numpy as np
from util import gunzip_json

def check_completion_count(experiment: Experiment):
    
    pretty = f"python3 main.py --lang {experiment.lang} --root-dataset {experiment.dataset} --model-name {experiment.model} --temperature {experiment.temp}"

    if not experiment.path().exists():
        return ["Missing experiment," + pretty]
    
    results = [ ]
    missing_reported = False
    for completions_path in experiment.path().glob("**/*.json.gz"):
        if completions_path.name.endswith(".results.json.gz"):
            continue

        completions_json = gunzip_json(completions_path)

        if completions_json is None:
            results.append(f"Corrupt completions,{completions_path}")
            continue
        if missing_reported == False and len(completions_json["completions"]) < 200:
            results.append("Missing completions," + pretty)
            missing_reported = True

    return results

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    
    with ProcessPoolExecutor() as executor:
        with args.output.open("w") as f:
            exps = list(all_experiments())
            for sub_results in tqdm.tqdm(executor.map(check_completion_count, exps), total=len(exps)):
                for result in sub_results:
                    f.write(result)
                    f.write("\n")

if __name__ == "__main__":
    main()