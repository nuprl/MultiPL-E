import argparse
import json
import time
import gzip
from pathlib import Path
from multiprocessing import cpu_count
from typing import Optional
from threading import Lock
from concurrent.futures import ThreadPoolExecutor

from containerized_eval import eval_string_script

# Get working directory
WORKING_DIR = Path(__file__).parent.parent

# program: str => Result
CACHE = dict()
CACHE_LOCK = Lock()

def cache_get(program: str) -> Optional[dict]:
    if program in CACHE:
        result = CACHE[program]
        return result
    else:
        return None

def cache_set(program: str, result: dict):
    if program in CACHE:
        print("Setting already-existing cache")
    CACHE[program] = result

def cached_eval_script(problem, index) -> dict:
    program = problem["prompt"] + problem["completions"][index] + '\n' + problem["tests"]
    CACHE_LOCK.acquire(True)
    cached = cache_get(program)
    if cached is not None:
        CACHE_LOCK.release()
        return cached
    else:
        result_yaml = dict()
        cache_set(program, result_yaml)
        CACHE_LOCK.release()
        result_dict = eval_string_script(problem["language"], program)
        for k in result_dict.keys():
            result_yaml[k] = result_dict[k]
            result_yaml["timestamp"] = int(time.time())
        return result_yaml


def open_json(fpath: Path, mode: str):
    return  gzip.open(fpath, mode + "t") if fpath.suffix == ".gz" else open(fpath, mode)

def evaluate_problem_data(problem: dict, output_path: Path, max_workers: int) -> None:
    """Evaluate a loaded completion dictionary and write results to ``output_path``."""
    if len(problem.get("completions", [])) == 0:
        return

    test_results = problem.copy()
    del test_results["completions"]
    test_results["results"] = []

    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        for result in executor.map(lambda idx: cached_eval_script(problem, idx), range(len(problem["completions"]))):
            test_results["results"].append(result)

    output_path.parent.mkdir(parents=True, exist_ok=True)
    with open_json(output_path, "w") as f:
        f.write(json.dumps(test_results, indent=2))


def process_file(path: Path, output_dir: Path, max_workers: int) -> None:
    """Read ``path`` as JSON, delete it, and write evaluated results to ``output_dir``."""
    with open_json(path, "r") as f:
        problem = json.load(f)
    output_path = output_dir / path.name
    path.unlink()
    evaluate_problem_data(problem, output_path, max_workers)


def watch_directory(input_dir: Path, output_dir: Path, max_workers: int, interval: float = 1.0) -> None:
    """Watch ``input_dir`` for JSON files and process them when they appear.

    The previous implementation processed files sequentially which could be slow
    when many completion files were present. This version evaluates multiple
    files concurrently using a ``ThreadPoolExecutor``.
    """
    while True:
        files = list(input_dir.glob("*.json")) + list(input_dir.glob("*.json.gz"))

        if files:
            with ThreadPoolExecutor(max_workers=max_workers) as executor:
                for file in files:
                    executor.submit(process_file, file, output_dir, max_workers)

        time.sleep(interval)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input-dir", type=Path, required=True, help="Directory to watch for JSON files")
    parser.add_argument("--output-dir", type=Path, required=True, help="Directory to store results")
    parser.add_argument("--max-workers", type=int, help="Maximum number of workers to use")
    parser.add_argument("--interval", type=float, default=1.0, help="Polling interval in seconds")
    args = parser.parse_args()

    if not args.max_workers:
        args.max_workers = cpu_count() - 1 if cpu_count() > 1 else 1

    args.output_dir.mkdir(parents=True, exist_ok=True)
    watch_directory(args.input_dir, args.output_dir, args.max_workers, args.interval)


if __name__ == "__main__":
    main()
