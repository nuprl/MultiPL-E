import argparse
from pathlib import Path
from problem_yaml import Problem, Result, ResultList, TestResults
import eval_ruby, eval_lua, eval_python, eval_rust, eval_julia
import tempfile
import sys
from concurrent.futures import ThreadPoolExecutor

EVALUATORS = {
  #  "ruby": (eval_ruby.eval_script, ".rb"),
 #   "lua": (eval_lua.eval_script, ".lua"),
#    "python": (eval_python.eval_script, ".py")
    "julia": (eval_julia.eval_script, ".jl")
}


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

def eval_in_thread(problem, test_results, i):
    program = problem.prompt + problem.completions[i] + '\n' + problem.tests

    if i < len(test_results.results) and test_results.results[i].program == program:
        # Assume that the results for this program are already correct.
        return test_results.results[i]

    (eval_script, file_ext) = EVALUATORS[problem.language]
    with tempfile.NamedTemporaryFile(suffix=file_ext, delete=True) as f:
        f.write(program.encode("utf-8"))
        f.flush()
        result = eval_script(f.name)
        result_yaml = Result()
        result_yaml.program = program
        #TODO: make this eyesore not an eyesore 
        result_yaml.stdout = result['stdout'].replace("!!int", "")
        result_yaml.stderr = result['stderr']
        result_yaml.exit_code = result['exit_code']
        result_yaml.status = result['status']
    return result_yaml

def evaluate_problem(problem_yaml_path):
    with open(problem_yaml_path) as f:
        problem = Problem.load(f)

    # Do not create a blank .results.yaml file if there are no completions ready.
    if len(problem.completions) == 0:
        return

    test_results = load_or_create_test_results_yaml(problem, problem_yaml_path)

    if len(problem.completions) < len(test_results.results):
        print(f"Fewer completions than results for {problem.name}. Skipping. Fix this manually")
        return

    results_path = get_test_results_yaml_path(problem_yaml_path)
    print(f'Producing {results_path}')
    
    with ThreadPoolExecutor() as executor:
        result_yamls = executor.map(lambda i: eval_in_thread(problem, test_results, i), range(len(problem.completions)))
        test_results.results = list(result_yamls)
    with results_path.open("w") as f:
        f.write(TestResults.dump(test_results))


def evaluate_problems(target_dir):
    for problem_yaml_path in target_dir.glob("*.yaml"):
        if problem_yaml_path.name.endswith(".results.yaml"):
            continue
        evaluate_problem(problem_yaml_path)

def main():
    args = argparse.ArgumentParser()
    args.add_argument(
        "--target-dir", type=str, required=True, help="Directory to write YAML files to"
    )
    args = args.parse_args()
    target_dir = Path(args.target_dir)
    if not target_dir.exists():
        print(f"Target directory {target_dir} does not exist")
        sys.exit(1)
    evaluate_problems(target_dir)

if __name__ == "__main__":
    main()
