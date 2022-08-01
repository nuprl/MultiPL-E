import argparse
from pathlib import Path
import subprocess
import sys
from concurrent.futures import ThreadPoolExecutor

# Get working directory
WORKING_DIR = Path(__file__).parent.parent
    
def evaluate_problem(problem_yaml_path: Path):
     subprocess.run(["podman", "run", "--rm", "--volume",
        f"${WORKING_DIR}:/multipleval:rw",
        "--stop-timeout", str(200 * 30),
        "multipleval", "python3",
        "containerized_eval.py", str(problem_yaml_path)],
        shell=True, stdin=subprocess.DEVNULL)

def evaluate_problems(target_dir: Path, max_workers: int):
    problems = [ p for p in target_dir.glob("*.yaml") if not p.name.endswith(".results.yaml") ]
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        for _ in executor.map(evaluate_problem, problems):
            pass

def main():
    args = argparse.ArgumentParser()
    args.add_argument(
        "--target-dir", type=str, required=True, help="Directory to write YAML files to",
    )
    args.add_argument(
        "--max-workers", type=int, required=True, help="Maximum number of workers to use",
    )
    args = args.parse_args()
    target_dir = Path(args.target_dir)
    if not target_dir.exists():
        print(f"Target directory {target_dir} does not exist")
        sys.exit(1)
    if args.max_workers < 1:
        print(f"Maximum workers must be at least 1")
        sys.exit(1)
    evaluate_problems(target_dir, args.max_workers)

if __name__ == "__main__":
    main()
