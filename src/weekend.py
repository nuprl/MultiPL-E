"""
Runs benchmarks all weekend.

"""
import csv
from pathlib import Path
import os
import sys
import subprocess


# A list of dictionaries with keys Machine,Language,Doctests,Model,Temperature
def load_experiments_csv(local_only: bool):
    with open("../experiments/experiments.csv", "r") as f:
        all_rows = list(csv.DictReader(f))
    all_rows = (row for row in all_rows if row["Skip"] == "No")
    if not local_only:
        return all_rows

    MACHINE = os.getenv("MULTIPLEVAL_MACHINE")
    if MACHINE is None:
        print("Please set the MULTIPLEVAL_MACHINE environment variable.")
        sys.exit(1)
    return (row for row in all_rows if row["Machine"] == MACHINE)


def experiment_path(row: dict) -> Path:
    return Path(
        f"../experiments/{row['Language']}-{row['Model']}-{row['Temperature']}-{row['Doctests']}"
    )


def prepare():
    for experiment in load_experiments_csv(False):
        p = experiment_path(experiment)
        p.mkdir(exist_ok=True)
        print(f"Preparing {p}")
        os.system(
            f"python3 prepare_prompts_yaml.py --lang {experiment['Language']} --target-dir {p} --doctests {experiment['Doctests']}"
        )

def work():
    for experiment in load_experiments_csv(True):
        if experiment["Model"] == "davinci":
            model = "completions_codex.py"
        elif experiment["Model"] == "incoder":
            model = "completions_incoder.py"
        else:
            raise ValueError(f"Unknown model: {experiment['Model']}")
        
        temperature = experiment["Temperature"]
        max_samples = "32" if model == "incoder" else "30"
        p = experiment_path(experiment)

        os.system(
            f"python3 {model} --dir {str(p)} --temperature {temperature} --max-samples {max_samples}"
        )

def main():
    if sys.argv[1] == "prepare":
        prepare()
        return
    elif sys.argv[1] == "work":
        work()
        return
    else:
        print("Bad argument")
        sys.exit(1)


if __name__ == "__main__":
    main()
