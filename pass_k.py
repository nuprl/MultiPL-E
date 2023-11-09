"""

This script calculates pass@k. It receives a list of directories as its
argument, and calculates the mean pass@k for the set of problems in each
directory. It checks that all results in a directory were generated at the same
temperature. It calculates pass@1 for temperature 0.2 and both pass@10 and
pass@100 for temperature 0.8.

The output has the following columns:

- Dataset: the name of a directory
- Pass@k: the value of k
- Estimate: the mean pass@k for the problems in the directory
- NumProblems: the number of problems in the directory
- MinCompletions: the minimum number of completions for any problem in the 
  directory
- MaxCompletions: the maximum number of completions for any problem in the
  directory
"""
import numpy as np
from pathlib import Path
import itertools
import argparse
from multipl_e.util import gunzip_json, eprint


def estimator(n: int, c: int, k: int) -> float:
    """
    Calculates 1 - comb(n - c, k) / comb(n, k).
    """
    if n - c < k:
        return 1.0
    return 1.0 - np.prod(1.0 - k / np.arange(n - c + 1, n + 1))


def for_file(path):
    data = gunzip_json(path)
    if data is None:
        return None
    n = len(data["results"])
    c = len([True for r in data["results"] if r["status"]
            == "OK" and r["exit_code"] == 0])
    return {
        "pass@1": estimator(n, c, 1),
        "pass@10": estimator(n, c, 10),
        "pass@100": estimator(n, c, 100),
        "n": n,
        "c": c,
        "temperature": data["temperature"] if "temperature" in data else 0.2
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--suppress-header",
                        action="store_true", help="Suppress the header")
    parser.add_argument("-k", type=int, default=None, help="The value of k")
    parser.add_argument(
        "dirs", type=str,  help="Directories with results. ", nargs="+")
    args = parser.parse_args()
    if not args.suppress_header:
        print("Dataset,Pass@k,Estimate,NumProblems,MinCompletions,MaxCompletions")
    for d in args.dirs:
        results = [for_file(p) for p in itertools.chain(
            Path(d).glob("*.results.json"), Path(d).glob("*.results.json.gz"))]
        results = [r for r in results if r is not None]
        name = d.split("/")[-1] if d.split("/")[-1] != "" else d.split("/")[-2]
        temperatures = set(r["temperature"] for r in results)
        if len(temperatures) != 1:
            eprint(
                f"Found multiple temperatures {temperatures} in {d} {results}")
            continue
        temperature = list(temperatures)[0]
        num_problems = len(results)
        min_completions = np.min([r["n"] for r in results])
        max_completions = np.max([r["n"] for r in results])
        if temperature == 0.8:
            pass_10 = np.mean([r["pass@10"] for r in results])
            pass_100 = np.mean([r["pass@100"] for r in results])
            print(
                f"{name},10,{pass_10},{num_problems},{min_completions},{max_completions}")
            print(
                f"{name},100,{pass_100},{num_problems},{min_completions},{max_completions}")
        else:
            pass_1 = np.mean([r["pass@1"] for r in results])
            print(
                f"{name},1,{pass_1},{num_problems},{min_completions},{max_completions}")

            
        if args.k is not None:
            pass_k = np.mean([estimator(r["n"], r["c"], args.k) for r in results])
            print(
                f"{name},{args.k},{pass_k},{num_problems},{min_completions},{max_completions}")


if __name__ == "__main__":
    main()
