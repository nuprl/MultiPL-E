import argparse
from pathlib import Path
import subprocess
import json
from concurrent.futures import ThreadPoolExecutor
from tqdm import tqdm
from containerized_eval import eval_string_script
from threading import Lock
import time
from typing import Optional

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


def get_test_results_json_path(problem_json_path: Path) -> Path:
    return problem_json_path.parent / (problem_json_path.stem + ".results.json")

def evaluate_problem(problem_json_path: Path, max_workers: int):
    with open(problem_json_path) as f:
        problem = json.load(f)

    # Do not create a blank .results.yaml file if there are no completions ready.
    if len(problem["completions"]) == 0:
        return

    test_results_path = get_test_results_json_path(problem_json_path)

    if not test_results_path.exists():
        test_results = problem.copy()
        del test_results["completions"]
        test_results["results"] = []
    else:
        with test_results_path.open() as f:
            test_results = json.load(test_results_path)

    num_problems = len(problem["completions"])

    if len(test_results["results"]) == num_problems:
        return
    elif len(test_results["results"]) > num_problems:
        print(f"ERROR more results than completions for {problem_json_path}")
        return

    min_problem = len(test_results["results"])

    # In case we have previously computed results, warm the cache with them
    for already_computed in test_results["results"]:
      CACHE[already_computed["program"]] = already_computed

    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        for j in executor.map(lambda index: cached_eval_script(problem, index), range(min_problem, num_problems)):
            test_results["results"].append(j)
            with test_results_path.open("w") as f:
                f.write(json.dumps(test_results, indent=2))


def main():
    args = argparse.ArgumentParser()
    args.add_argument(
        "--max-workers", type=int, required=True, help="Maximum number of workers to use",
    )
    args.add_argument(
        "--job-file", type=str, help="Where the files come from",
    )
    args.add_argument(
        "--job-file-line", type=int, help="The line on the file")

    args.add_argument("--file", type=str, help="The file to evaluate")
    args.add_argument("--dir", type=str, help="The directory to evaluate")

    args = args.parse_args()

    if args.file:
        evaluate_problem(Path(args.file), args.max_workers)
    elif args.dir:
        files = [ p for p in Path(args.dir).glob("*.json") if not p.name.endswith(".results.json") ]
        for file in tqdm(files):
            evaluate_problem(file, args.max_workers)
    elif args.job_file and args.job_file_line is not None:
        with open(args.job_file) as f:
            # Skip the first two space, separated columns, which identify the language
            # and the number of jobs.
            files = f.readlines()[args.job_file_line].rstrip().split(" ")[2:]
        for f in files:
            print(f"Processing {f}")
            evaluate_problem(Path(f), args.max_workers)    
    else:
        print("Specify either --file, --dir, or both --job-file and --job-file-line")
        exit(1)


if __name__ == "__main__":
    main()
