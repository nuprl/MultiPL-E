import argparse
from pathlib import Path
import subprocess
import sys
import json
from problem_yaml import Problem, Result, ResultList, TestResults
from concurrent.futures import ThreadPoolExecutor
from tqdm import tqdm

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

def load_or_create_test_results_yaml(problem: Problem, problem_yaml_path: Path):
    p = get_test_results_yaml_path(problem_yaml_path)
    if p.exists():
        with p.open() as f: 
            return TestResults.load(f)
    y = TestResults()
    y.name = problem.name
    y.language = problem.language
    y.results = ResultList()
    return y


def evaluate_problem(problem_yaml_path: Path, max_workers: int, limited = False):
    with open(problem_yaml_path) as f:
        problem = Problem.load(f)

    # Do not create a blank .results.yaml file if there are no completions ready.
    if len(problem.completions) == 0:
        return

    test_results = load_or_create_test_results_yaml(problem, problem_yaml_path)

    if len(problem.completions) < len(test_results.results):
        print(f"Fewer completions than results for {problem.name}. Skipping. Fix this manually")
        return

    num_problems = 1 if limited else len(problem.completions)

    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        for json_strings in executor.map(lambda index: evaluate_problem_in_container(problem_yaml_path, index), range(num_problems)):
            j = json.loads(json_strings)
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
    # Choose HumanEval_53_add as the first problem to run, as a litmus test
    simple_problem = [f for f in target_dir.glob("*.yaml") if "_53_" in f.name]
    problems = simple_problem + [ p for p in target_dir.glob("*.yaml")
            if not p.name.endswith(".results.yaml") and not "_53_" in p.name ]

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
    args.add_argument(
            "--limited", type=bool, default=False)

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
        print(f"Evaluating a single problem")
        evaluate_problem(target, args.max_workers, args.limited)

if __name__ == "__main__":
    main()
