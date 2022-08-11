from __future__ import annotations
import argparse
from collections import OrderedDict, defaultdict
from pathlib import Path
import shutil
import os
import csv
from random import shuffle
import re
from typing import Callable, Dict, List, Tuple
import yaml
try:
    from yaml import CLoader as YAML_Loader
except ImportError:
    print("Warning: You should really consider installing LibYAML (https://pyyaml.org/wiki/LibYAML), this script will run much faster")
    from yaml import Loader as YAML_Loader


def f_and(*funcs):
    def the_and(*args, **kwargs):
        return all(f(*args, **kwargs) for f in funcs)
    return the_and

def f_or(*funcs):
    def the_or(*args, **kwargs):
        return any(f(*args, **kwargs) for f in funcs)
    return the_or

def f_not(f):
    def the_not(*args, **kwargs):
        return not f(*args, **kwargs)
    return the_not

def ok_category(exit_code: int, status: str, stderr: str, stdout: str) -> bool:
    return exit_code == 0 and status == 'OK'

def compile_error_category(exit_code: int, status: str, stderr: str, stdout: str) -> bool:
    return exit_code != 0 and status == 'SyntaxError'

def exception_category(exit_code: int, status: str, stderr: str, stdout: str) -> bool:
    return exit_code != 0 and status == 'Exception'

def assertion_fail(exit_code: int, status: str, stderr: str, stdout: str) -> bool:
    return ": Assertion failed\nCurrent stack trace:" in stderr

def unwrap_nil(exit_code: int, status: str, stderr: str, stdout: str) -> bool:
    return ": Fatal error: Unexpectedly found nil while unwrapping an Optional value\nCurrent stack trace:" in stderr

def index_out_of_range(exit_code: int, status: str, stderr: str, stdout: str) -> bool:
    return ": Fatal error: Index out of range\nCurrent stack trace:" in stderr

def string_index_out_of_bounds(exit_code: int, status: str, stderr: str, stdout: str) -> bool:
    return ": Fatal error: String index is out of bounds\nCurrent stack trace:" in stderr

def array_index_out_of_range(exit_code: int, status: str, stderr: str, stdout: str) -> bool:
    return ": Fatal error: Array index is out of range\nCurrent stack trace:" in stderr

def invalid_range_creation(exit_code: int, status: str, stderr: str, stdout: str) -> bool:
    return ": Fatal error: Range requires lowerBound <= upperBound\nCurrent stack trace:" in stderr

def cant_remove_last_elem_from_empty_collection(exit_code: int, status: str, stderr: str, stdout: str) -> bool:
    return ": Fatal error: Can't remove last element from an empty collection\nCurrent stack trace:" in stderr

def cant_remove_first_elem_from_empty_collection(exit_code: int, status: str, stderr: str, stdout: str) -> bool:
    return ": Fatal error: Can't remove first element from an empty collection\nCurrent stack trace:" in stderr

def div_by_zero_remainder(exit_code: int, status: str, stderr: str, stdout: str) -> bool:
    return ": Fatal error: Division by zero in remainder operation\nCurrent stack trace:" in stderr

def negative_array_index(exit_code: int, status: str, stderr: str, stdout: str) -> bool:
    return ": Fatal error: Negative Array index is out of range\nCurrent stack trace:" in stderr

def over_under_flow(exit_code: int, status: str, stderr: str, stdout: str) -> bool:
    return stderr == "" and stdout == "" and status == 'Exception' and exit_code == -4


NONEXISTENT_METHOD_RE = re.compile(r"error: value of type .* has no member .*")
def nonexistent_method(exit_code: int, status: str, stderr: str, stdout: str) -> bool:
    return NONEXISTENT_METHOD_RE.search(stderr) is not None

def timeout_category(exit_code: int, status: str, stderr: str, stdout: str) -> bool:
    return exit_code != 0 and status == 'Timeout'

CATEGORY_DEFINITIONS: OrderedDict[str, Tuple[str, Callable[[int, str, str, str], bool]]] = OrderedDict([
    ('OK', ('OK', 
        ok_category
    )),
    ('Timeout', ('Is this runtime or compiler or both?', 
        timeout_category
    )),
    ('Exception-AssertionFail', ('An assertion failed', 
        f_and(exception_category, assertion_fail)
    )),
    ('Exception-UnwrapNil', ('Nil was unwrapped', 
        f_and(exception_category, unwrap_nil)
    )),
    ('Exception-IndexOutOfRange', ('Index out of range', 
        f_and(exception_category, index_out_of_range)
    )),
    ('Exception-StringIndexOutOfBounds', ('String index out of bounds', 
        f_and(exception_category, string_index_out_of_bounds)
    )),
    ('Exception-ArrayIndexOutOfRange', ('Array index out of range', 
        f_and(exception_category, array_index_out_of_range)
    )),
    ('Exception-InvalidRangeCreation', ('Invalid range creation', 
        f_and(exception_category, invalid_range_creation)
    )),
    ('Exception-RemoveLastFromEmptyCollection', ('Attempted to remove last element from empty collection', 
        f_and(exception_category, cant_remove_last_elem_from_empty_collection)
    )),
    ('Exception-RemoveFirstFromEmptyCollection', ('Attempted to remove first element from empty collection', 
        f_and(exception_category, cant_remove_first_elem_from_empty_collection)
    )),
    ('Exception-DivisionByZeroInRemainder', ('Division by zero when calculating remainder (mod)', 
        f_and(exception_category, div_by_zero_remainder)
    )),
    ('Exception-NegativeArrayIndex', ('Negative array index', 
        f_and(exception_category, negative_array_index)
    )),
    ('Exception-OverflowUnderflowTrap', ('A Int / UInt overflow / underflow occurred. Note: there isnt anything in the error messages that indicates this but I verified for all 9 cases manually.', 
        f_and(exception_category, over_under_flow)
    )),
    # ('Exception-Else', ('Other exceptions', 
    #     f_and(
    #         exception_category, 
    #         f_not(f_or(
    #             assertion_fail, 
    #             unwrap_nil, 
    #             index_out_of_range,
    #             string_index_out_of_bounds,
    #             array_index_out_of_range,
    #             invalid_range_creation, 
    #             cant_remove_last_elem_from_empty_collection,
    #             cant_remove_first_elem_from_empty_collection,
    #             div_by_zero_remainder,
    #             negative_array_index,
    #             over_under_flow
    #         ))
    #     )
    # )),

    ('CompileError-NonExistentMethod', ('An call was made to a non-existent method', 
        f_and(compile_error_category, nonexistent_method)
    )),
    ('CompileError-Else', ('Other compilation errors', 
        f_and(
            compile_error_category, 
            f_not(f_or(
                nonexistent_method,
            ))
        )
    )),
])



    

def main():
    parser = argparse.ArgumentParser(description='Categorize Swift errors')
    parser.add_argument('--in-dir', type=str, help='the directory .yaml and .results.yaml files.', default='experiments/swift-davinci-0.2-reworded')
    parser.add_argument('--examples-out-dir', type=str, help='the directory in which to place examples', default='swift_error_examples')
    parser.add_argument('--csv-out', type=str, help='where to write the CSV', default='error_examples/swift_codes.csv')
    parser.add_argument('--n-examples', type=int, help='How many examples for each error code', default=None),
    parser.add_argument('--no-shuffle-examples', action='store_false', help='Disabling shuffling of examples', dest='shuffle_examples', default=True)
    parser.add_argument('--allow-fallthrough', action='store_true', help='Should fallthrough be allowed?')
    parser.add_argument('--allow-multimatch', action='store_true', help='Should multimatch be allowed?')
    

    args = parser.parse_args()

    in_dir = Path(args.in_dir)

    examples_out_dir = Path(args.examples_out_dir)
    csv_out = Path(args.csv_out)

    if examples_out_dir.exists():
        assert examples_out_dir.is_dir()
        print(f"Deleting {examples_out_dir}")
        shutil.rmtree(examples_out_dir, ignore_errors=True)
    if csv_out.exists():
        assert csv_out.is_file()
        print(f"Deleting {csv_out}")
        os.remove(csv_out)
    examples_out_dir.mkdir()

    print(f"Writing Swift codes to {csv_out}")
    print(f"Writing Swift examples to {examples_out_dir}")

    problems = load_problems(in_dir)
    category_results: OrderedDict[str, List[Tuple[str, int]]] = OrderedDict([(k, list()) for k in CATEGORY_DEFINITIONS.keys()])
    for prob in problems.values():
        for comp_idx in range(len(prob.completions)):
            comp = prob.completions[comp_idx]
            did_find_cat = False
            for cat_name, (_, cat_fn) in CATEGORY_DEFINITIONS.items():
                if cat_fn(comp.exit_code, comp.status, comp.stderr, comp.stdout):
                    if did_find_cat and not args.allow_multimatch:
                        raise Exception(f'prob = {prob.name}, comp_idx = {comp_idx} is in multiple categories.')
                    elif did_find_cat:
                        print(f'Warning: prob = {prob.name}, comp_idx = {comp_idx} is in multiple categories.')
                    did_find_cat = True
                    category_results[cat_name].append((prob.name, comp_idx))
            
            if not did_find_cat:
                if args.allow_fallthrough:
                    if 'fallthrough' not in category_results:
                        category_results['fallthrough'] = []
                    category_results['fallthrough'].append((prob.name, comp_idx))
                else:
                    raise Exception(f'No category matched for prob = {prob.name}, comp_idx = {comp_idx}.')
                    
    with csv_out.open('w', newline='') as csv_f:
        csv_writer = csv.writer(csv_f)
        csv_writer.writerow(['code', 'description', 'count', 'example'])

        for cat_name, example_keys in category_results.items():
            desc = 'SHOULD BE EMPTY' if cat_name == 'fallthrough' else CATEGORY_DEFINITIONS[cat_name][0]
            example_out = examples_out_dir / f"{cat_name}.swift"
            cat_count = len(example_keys)

            if args.shuffle_examples:
                shuffle(example_keys)

            if args.n_examples is not None:
                example_keys = example_keys[:(args.n_examples)]


            with example_out.open('w') as example_f:
                for (prob_name, comp_idx) in example_keys:
                    prob = problems[prob_name]
                    example_f.write(f"// ----------- problem {prob_name}, completion {comp_idx} ------------\n")
                    example_f.write(f"// status = {prob.completions[comp_idx].status}\n")
                    example_f.write(f"// exit_code = {prob.completions[comp_idx].exit_code}\n")
                    example_f.write(f"/* stderr = \n{prob.completions[comp_idx].stderr}\n*/\n")
                    example_f.write(f"/* stdout = \n{prob.completions[comp_idx].stdout}\n*/\n\n")
                    example_f.write(prob.program_for_completion(comp_idx))
                    example_f.write("\n\n\n\n")
            csv_writer.writerow([cat_name, desc, cat_count, str(example_out)])
                    


    
    


def load_problems(in_dir: Path) -> Dict[str, Problem]:
    problems: Dict[str, Problem] = {}
    for entry in in_dir.iterdir():
        assert entry.is_file()

        entry_str = str(entry)
        if entry_str.endswith('.results.yaml'):
            continue
        if entry_str.endswith('.yaml'):
            results_entry = Path(entry_str.removesuffix('.yaml') + '.results.yaml')
            assert results_entry.exists()

            prob = Problem.from_yaml_files(entry, results_entry)
            problems[prob.name] = prob
    return problems

class ProblemCompletion(object):
    def __init__(self, completion: str, exit_code: int, status: str, stderr: str, stdout: str) -> None:
        self.completion = completion
        self.exit_code = exit_code
        self.status = status
        self.stdout = stdout
        self.stderr = stderr

class Problem(object):
    def __init__(self, name: str, prompt: str, tests: str, completions: List[ProblemCompletion]) -> None:
        self.name = name
        self.prompt = prompt
        self.tests = tests
        self.completions = completions

    def program_for_completion(self, completion_idx: int) -> str:
        return self.prompt + self.completions[completion_idx].completion + "\n" + self.tests

    @staticmethod
    def from_yaml_files(yaml_path: Path, results_yaml_path: Path) -> Problem:
        with open(yaml_path, 'r') as f:
            prob_data = yaml.load(f, YAML_Loader)
        with open(results_yaml_path, 'r') as f:
            results_data = yaml.load(f, YAML_Loader)
        
        prob_name = prob_data['name']
        assert prob_name == results_data['name']
        assert prob_data['language'] == 'swift' and results_data['language'] == 'swift'
        prompt = prob_data['prompt']
        tests = prob_data['tests']

        completions_raw = prob_data['completions']
        results = results_data['results']
        assert len(completions_raw) == len(results)

        comps: List[ProblemCompletion] = []
        for c, r in zip(completions_raw, results):
            assert prompt + c + "\n" + tests == r['program']
            comps.append(ProblemCompletion(c, r['exit_code'], r['status'], r['stderr'], r['stdout']))

        return Problem(prob_name, prompt, tests, comps)



if __name__ == "__main__":
    main()