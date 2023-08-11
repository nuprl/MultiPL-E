from multipl_e.util import gunzip_json
from pathlib import Path
import argparse
import numpy as np
from matplotlib import pyplot as plt

def num_results(p: Path):
    results = gunzip_json(p)["results"]
    if results[-1]["status"] == "OK":
        return len(results)
    return None

def results_in_dir(p: Path):
    for f in p.glob("*.results.json.gz"):
        r = num_results(f)
        if r is not None:
            yield r

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("dir", type=Path)
    args = parser.parse_args()

    counts = list(results_in_dir(args.dir))
    print(f"Found {len(counts)} results")
    print(f"Mean: {np.mean(counts)}")
    print(f"Median: {np.median(counts)}")
    print(f"Min: {np.min(counts)}")
    print(f"Max: {np.max(counts)}")

    plt.hist(counts, bins=100)
    plt.savefig("results.pdf")

if __name__ == "__main__":
    main()
