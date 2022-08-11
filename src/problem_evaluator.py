import argparse
from pathlib import Path
import subprocess
import sys
import json
from problem_yaml import Problem
import yaml
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
    program = problem.prompt + problem.completions[index] + '\n' + problem.tests
    CACHE_LOCK.acquire(True)
    cached = cache_get(program)
    if cached is not None:
        CACHE_LOCK.release()
        return cached
    else:
        result_yaml = dict()
        cache_set(program, result_yaml)
        CACHE_LOCK.release()
        result_dict = eval_string_script(problem.language, program)
        for k in result_dict.keys():
            result_yaml[k] = result_dict[k]
            result_yaml["timestamp"] = int(time.time())
        return result_yaml

class NoAliasDumper(yaml.SafeDumper):
    def ignore_aliases(self, data):
        return True

def evaluate_problem_in_container(problem_yaml_path: Path, index):
    proc = subprocess.run(["podman", "run", "--rm", "--volume",
        f"{WORKING_DIR}:/multipleval:rw",
        "--timeout", "30",
        "multipleval", "python3",
        "containerized_eval.py",
        "--problem_yaml_path", str(problem_yaml_path),
        "--index", str(index)],
        capture_output=True,
        stdin=subprocess.DEVNULL)
    if proc.returncode == 0:
        return proc.stdout.decode("utf-8")

    return json.dumps({
        "exit_code": proc.returncode,
        "stdout": proc.stdout.decode("utf-8"),
        "stderr": proc.stderr.decode("utf-8"),
        "program": "",
        "status": "Container timeout",
    })


def get_test_results_yaml_path(problem_yaml_path: Path) -> Path:
    return problem_yaml_path.parent / (problem_yaml_path.stem + ".results.yaml")

def evaluate_problem(problem_yaml_path: Path, max_workers: int):
    with open(problem_yaml_path) as f:
        problem = Problem.load(f)

    # Do not create a blank .results.yaml file if there are no completions ready.
    if len(problem.completions) == 0:
        return

    test_results_path = get_test_results_yaml_path(problem_yaml_path)

    if not test_results_path.exists():
        test_results = {
            "name": problem.name,
            "language": problem.language,
            "results": [],
        }
    else:
        with test_results_path.open() as f:
            test_results = yaml.safe_load(f)

    num_problems = len(problem.completions)

    if len(test_results["results"]) == num_problems:
        return
    elif len(test_results["results"]) > num_problems:
        print(f"ERROR more results than completions for {problem_yaml_path}")
        return

    min_problem = len(test_results["results"])

    # In case we have previously computed results, warm the cache with them
    for already_computed in test_results["results"]:
      CACHE[already_computed["program"]] = already_computed

    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        for j in executor.map(lambda index: cached_eval_script(problem, index), range(min_problem, num_problems)):
            test_results["results"].append(j)
            with test_results_path.open("w") as f:
                f.write(yaml.dump(test_results, Dumper=NoAliasDumper))


def evaluate_problems(target_dir: Path, max_workers: int):
    problems = [ p for p in target_dir.glob("*.yaml") if not p.name.endswith(".results.yaml") ]

    for problem_yaml_path in tqdm(problems, desc=str(target_dir)):
        evaluate_problem(problem_yaml_path, max_workers)


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
    args.add_argument("--files", nargs="+", help="A list of files to run on")
    

    args = args.parse_args()

    if args.files:
        for file in tqdm(files):
            evaluate_problem(Path(file), args.max_workers)
    elif args.job_file and args.job_file_line is not None:
        with open(args.job_file) as f:
            # Skip the first two space, separated columns, which identify the language
            # and the number of jobs.
            files = f.readlines()[args.job_file_line].rstrip().split(" ")[2:]
        for f in files:
            print(f"Processing {f}")
            evaluate_problem(Path(f), args.max_workers)    
    else:
        print("Specify either --file or --job-file and --job-file-line")
        exit(1)


if __name__ == "__main__":
    main()
