"""
This is the entrypoint for the containerized evaluator.

The program expects as input the path to a PROBLEM_NAME.yaml file and
produces PROBLEM_NAME.results.yaml alongside it.
"""

import argparse
from pathlib import Path
from problem_yaml import Problem, Result, ResultList, TestResults
import eval_ruby
import eval_lua
import eval_python
import eval_rust
import eval_julia
import eval_java
import eval_python
import eval_lua
import eval_racket
import eval_javascript
import eval_swift
import tempfile
import sys

EVALUATORS = {
    "ruby": (eval_ruby.eval_script, ".rb"),
    "lua": (eval_lua.eval_script, ".lua"),
    "python": (eval_python.eval_script, ".py"),
    "julia": (eval_julia.eval_script, ".jl"),
    "java" : (eval_java.eval_script, ".java"),
    "rust" : (eval_rust.eval_script, ".rs"),
    "swift": (eval_swift.eval_script, ".swift"),
    "lua": (eval_lua.eval_script, ".lua"),
    "python": (eval_python.eval_script, ".py"),
    "racket": (eval_racket.eval_script, ".rkt"),
    "javascript": (eval_javascript.eval_script, ".js"),
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
        # Only save the first 2K of output from the running program. Any futher
        # output is very likely an exceptionally long stack trace or a long
        # series of prints.
        #TODO(molly, arjun): make this eyesore not an eyesore
        result_yaml.stdout = result['stdout'].replace("!!int", "")[:2048]
        result_yaml.stderr = result['stderr'][:2048]
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

    for i in range(len(problem.completions)):
        result = eval_in_thread(problem, test_results, i)
        test_results.results.append(result)

    results_path = get_test_results_yaml_path(problem_yaml_path)
    with results_path.open("w") as f:
        f.write(TestResults.dump(test_results))

def main():
    parser = argparse.ArgumentParser(description="Evaluate a problem")
    parser.add_argument("problem_yaml_path", help="Path to the problem YAML file")
    args = parser.parse_args()
    evaluate_problem(Path(args.problem_yaml_path))

if __name__ == "__main__":
    main()
