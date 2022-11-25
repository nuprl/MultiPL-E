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

def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)



def should_include_file(path: Path) -> bool:
    return path.name.endswith(".json.gz")

def process_experiment(experiment: Experiment) -> List[str]:
    """
    Processes all .json.gz files in an experiment path. If the corresponding .results.json.gz
    does not exist or has fewer results than completions, return the name of the .json.gz file.
    """
    if not experiment.path().exists():
        eprint(f"Experiment path does not exist: {experiment.path()}")
        return []

    results = [ ]
    paths = list(experiment.path().glob("**/*.json.gz"))
    for completions_path in paths:
        if completions_path.name.endswith(".results.json.gz"):
            continue

        results_path = completions_path.parent / (completions_path.name[:-8] + ".results.json.gz")
        completions_json = gunzip_json(completions_path)
        results_json = gunzip_json(results_path)

        if completions_json is None:
            eprint(f"Failed to load {completions_path}")
            continue
        elif results_json is None:
            pass
        elif len(results_json["results"]) >= len(completions_json["completions"]):
            continue

        results.append(str(completions_path))

    return results


def build_job_file(args):
    results = [] 
    with ProcessPoolExecutor() as executor:
        exps = list(all_experiments())
        for sub_results in tqdm.tqdm(executor.map(process_experiment, exps), total=len(exps)):
            results.extend(sub_results)
    
    group_size = max(args.min_job_size, math.ceil(len(results) / args.max_jobs))
    with args.output.open("w") as f:
        for i in range(0, len(results), group_size):
            f.write(" ".join(results[i:i+group_size]))
            f.write("\n")


def estimate_passk(n: int, c: int, k: int) -> float:
    """
    Calculates 1 - comb(n - c, k) / comb(n, k).
    """
    if n - c < k:
        return 1.0
    return 1.0 - np.prod(1.0 - k / np.arange(n - c + 1, n + 1))


def single_problem_pass_k_for_experiment(exp_lo: Experiment) -> List[str]:
    results = [ ]
    dataset = exp_lo.dataset
    lang = exp_lo.lang
    model = exp_lo.model
    variation = exp_lo.variation
    exp_hi = Experiment(dataset, lang, model, "0.8", variation)

    for result_path in exp_lo.path().glob("*.results.json.gz"):
        results_json = gunzip_json(result_path)
        if results_json is None:
            eprint(f"Ignoring {result_path}")
            continue
        problem = result_path.name[:-len(".results.json.gz")]
        results_lo = results_json["results"][:200]
        n_lo = len(results_lo)
        c_lo = sum((1 for r in results_lo if r["status"] == "OK" and r["exit_code"] == 0))
        pass1 = estimate_passk(n_lo, c_lo, 1)

        results_json_hi = gunzip_json(exp_hi.path() / result_path.name)
        if results_json_hi is None:
            pass10 = "NA"
            pass100 = "NA"
            n_hi = "NA"
        else:
            results_hi = results_json_hi["results"][:200]
            n_hi = len(results_hi)
            c_hi = sum((1 for r in results_hi if r["status"] == "OK" and r["exit_code"] == 0))
            pass10 = estimate_passk(n_hi, c_hi, 10)
            pass100 = estimate_passk(n_hi, c_hi, 100)
        results.append(f"{dataset},{lang},{problem},{model},{variation},{pass1},{n_lo},{pass10},{n_hi},{pass100}")
    return results


def single_problem_pass_k(args):
    output: Path = args.output
    with output.open("wt") as f:
        f.write("dataset,lang,problem,model,variation,pass@1,n(t=0.2),pass@10,n(t=0.8),pass@100\n")
        exps = list((exp for exp in all_experiments() if exp.temp == "0.2"))
        with ProcessPoolExecutor() as executor:
            for results in tqdm.tqdm(executor.map(single_problem_pass_k_for_experiment, exps), total=len(exps)):
                for line in results:
                    f.write(line)
                    f.write("\n")

def main():
    parser = argparse.ArgumentParser()
    subparsers = parser.add_subparsers()

    # Sub-parser for the "build-job-file" command that takes --experiment directory
    build_job_file_parser = subparsers.add_parser("build-job-file")
    build_job_file_parser.add_argument("--output", type=Path, required=True)
    build_job_file_parser.add_argument("--max-jobs", type=int, default=1000)
    build_job_file_parser.add_argument("--min-job-size", type=int, default=50)
    build_job_file_parser.set_defaults(func=lambda: build_job_file(args))

    single_problem_pass_k_parser = subparsers.add_parser("single-problem-pass-k")
    single_problem_pass_k_parser.add_argument("--output", type=Path, required=True)
    single_problem_pass_k_parser.set_defaults(func=lambda: single_problem_pass_k(args))

    args = parser.parse_args()
    if not hasattr(args, "func"):
        eprint("No command specified")
        parser.print_help()
        sys.exit(1)
        return

    args.func()


if __name__ == "__main__":
    main()
