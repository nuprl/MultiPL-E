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
    return {
        "pass@1": estimator(n, c, 1),
        "pass@10": estimator(n, c, 10),
        "pass@100": estimator(n, c, 100),
        "temperature": data["temperature"]
    }

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("dirs", type=str,  help="Directories with results. ", nargs="+")
    args = parser.parse_args()
    print("Dataset,Pass@k,Estimate")
    for d in args.dirs:
        results = [ for_file(p) for p in itertools.chain(Path(d).glob("*.results.json"), Path(d).glob("*.results.json.gz")) ]
        name = d.split("/")[-1] if d.split("/")[-1] != "" else d.split("/")[-2]
        temperatures = set(r["temperature"] for r in results)
        if len(temperatures) != 1:
            raise ValueError(f"Found multiple temperatures {temperatures} in {d} {results}")
        temperature = list(temperatures)[0]
        if temperature == 0.2:
            pass_1 = np.mean([r["pass@1"] for r in results])
            print(f"{name},1,{pass_1}")
        elif temperature == 0.8:
            pass_10 = np.mean([r["pass@10"] for r in results])
            pass_100 = np.mean([r["pass@100"] for r in results])
            print(f"{name},10,{pass_10}")
            print(f"{name},100,{pass_100}")
        else:
            raise ValueError(f"Unexpected temperature: {temperature}")

if __name__ == "__main__":
    main()
