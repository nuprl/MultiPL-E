import numpy as np
from pathlib import Path
import json
import itertools
import argparse
import gzip

def estimator(n: int, c: int, k: int) -> float:
    """
    Calculates 1 - comb(n - c, k) / comb(n, k).
    """
    if n - c < k:
        return 1.0
    return 1.0 - np.prod(1.0 - k / np.arange(n - c + 1, n + 1))


def open_json(fpath: Path, mode: str):
        return  gzip.open(fpath, mode + "t") if fpath.suffix == ".gz" else open(fpath, mode)

def for_file(path):
    with open_json(path, "r") as f:
        data = json.load(f)
    n = len(data["results"])
    c = len([True for r in data["results"] if r["status"] == "OK" and r["exit_code"] == 0])
    return np.array([estimator(n, c, 1), estimator(n, c, 10), estimator(n, c, 100)])

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("dirs", type=str,  help="directories with results", nargs="+")
    args = parser.parse_args()
    for d in args.dirs:
        print(d)
        print("NOTE: Use pass@1 for temperature 0.2 and pass@10 or pass@100 for temperature 0.8")
        print("[pass@1 pass@10 pass@100]")
        print(np.array([ for_file(p) for p in itertools.chain(Path(d).glob("*.results.json"), Path(d).glob("*.results.json.gz")) ]).mean(axis=0))

if __name__ == "__main__":
    main()
