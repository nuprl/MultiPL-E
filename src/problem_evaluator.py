import argparse
from pathlib import Path
import subprocess
import sys
import json
from problem_yaml import Problem, Result, ResultList, TestResults
from concurrent.futures import ThreadPoolExecutor
from tqdm import tqdm
from containerized_eval import eval_script

# Get working directory
WORKING_DIR = Path(__file__).parent.parent
    
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
    if test_results_path.exists():
        return

    num_problems = len(problem.completions)

    test_results = TestResults()
    test_results.name = problem.name
    test_results.language = problem.language
    test_results.results = ResultList()


    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        for j in executor.map(lambda index: eval_script(problem, index), range(num_problems)):
            result_yaml = Result()
            result_yaml.program = j["program"]
            result_yaml.status = j["status"]
            result_yaml.exit_code = j["exit_code"]
            result_yaml.stdout = j["stdout"]
            result_yaml.stderr = j["stderr"]             
            test_results.results.append(result_yaml)

    results_path = get_test_results_yaml_path(problem_yaml_path)

    with results_path.open("w") as f:
        f.write(TestResults.dump(test_results))

def evaluate_problems(target_dir: Path, max_workers: int):
    problems = [ p for p in target_dir.glob("*.yaml") if not p.name.endswith(".results.yaml") ]

    for problem_yaml_path in tqdm(problems, desc=str(target_dir)):
        evaluate_problem(problem_yaml_path, max_workers)


def main():
    args = argparse.ArgumentParser()
    args.add_argument(
        "--target", type=str, required=True, help="Directory to write YAML files to",
    )
    args.add_argument(
        "--max-workers", type=int, required=True, help="Maximum number of workers to use",
    )

    args = args.parse_args()
    target = Path(args.target)
    if not target.exists():
        print(f"Target {target} does not exist")
        sys.exit(1)
    if args.max_workers < 1:
        print(f"Maximum workers must be at least 1")
        sys.exit(1)
    if target.is_dir():
        evaluate_problems(target, args.max_workers)
    else:
        evaluate_problem(target, args.max_workers)

if __name__ == "__main__":
    main()
