import numpy as np
from pathlib import Path
import yaml
import argparse

def estimator(n: int, c: int, k: int) -> float:
    """
    Calculates 1 - comb(n - c, k) / comb(n, k).
    """
    if n - c < k:
        return 1.0
    return 1.0 - np.prod(1.0 - k / np.arange(n - c + 1, n + 1))

def for_file(path):
    with open(path) as f:
        data = yaml.load(f, Loader=yaml.Loader)
    n = len(data["results"])
    c = len([True for r in data["results"] if r["status"] == "OK" and r["exit_code"] == 0])
    return np.array([estimator(n, c, 1), estimator(n, c, 10), estimator(n, c, 100)])

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("dir", type=str,  help="directory with results")
    args = parser.parse_args()
    print("NOTE: Use pass@1 for temperature 0.2 and pass@10 or pass@100 for temperature 0.8")
    print("[pass@1 pass@10 pass@100]")
    return np.array([ for_file(p) for p in Path(args.dir).glob("*.results.yaml") ]).mean(axis=0)

if __name__ == "__main__":
    print(main())
