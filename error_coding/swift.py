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


def ok_category(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return exit_code == 0 and status == 'OK'

def timeout_category(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return exit_code != 0 and status == 'Timeout'

def compile_error_category(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return exit_code != 0 and status == 'SyntaxError'

def exception_category(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return exit_code != 0 and status == 'Exception'

def assertion_fail(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return ": Assertion failed\nCurrent stack trace:" in stderr

def unwrap_nil(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return ": Fatal error: Unexpectedly found nil while unwrapping an Optional value\nCurrent stack trace:" in stderr

def index_out_of_range(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return ": Fatal error: Index out of range\nCurrent stack trace:" in stderr

def string_index_out_of_bounds(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return ": Fatal error: String index is out of bounds\nCurrent stack trace:" in stderr

def array_index_out_of_range(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return ": Fatal error: Array index is out of range\nCurrent stack trace:" in stderr

def invalid_range_creation(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return ": Fatal error: Range requires lowerBound <= upperBound\nCurrent stack trace:" in stderr

def cant_remove_last_elem_from_empty_collection(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return ": Fatal error: Can't remove last element from an empty collection\nCurrent stack trace:" in stderr

def cant_remove_first_elem_from_empty_collection(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return ": Fatal error: Can't remove first element from an empty collection\nCurrent stack trace:" in stderr

def div_by_zero_remainder(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return ": Fatal error: Division by zero in remainder operation\nCurrent stack trace:" in stderr

def negative_array_index(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return ": Fatal error: Negative Array index is out of range\nCurrent stack trace:" in stderr

def over_under_flow(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return stderr == "" and stdout == "" and status == 'Exception' and exit_code == -4


def linker_error(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return "error: link command failed with exit code 1" in stderr

def invalid_syntax(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    bad_syntax_markers = [
        "error: expected expression after operator",
        "error: expected '{' to start the body of for-each loop",
        "error: expected expression in 'switch' statement",
        "error: '[' is not allowed in operator names"
    ]
    return any(m in stderr for m in bad_syntax_markers)

def use_of_deprecated_unavailable_things(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    unavailable_markers = [
        "error: 'characters' is unavailable: Please use String directly"
    ]
    return any(m in stderr for m in unavailable_markers)

def use_of_mod_with_float(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return "error: '%' is unavailable: For floating point numbers use truncatingRemainder instead" in stderr


def subscript_string_with_int(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return "error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead." in stderr

MISSING_ARGUMENT_LABEL_RE = re.compile(r"error: missing argument label .* in call")
def missing_argument_label(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return MISSING_ARGUMENT_LABEL_RE.search(stderr) is not None

REDECLARED_VAR_RE = re.compile(r"error: invalid redeclaration of .*")
def redeclared_var(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return REDECLARED_VAR_RE.search(stderr) is not None

NONEXISTENT_METHOD_RE = re.compile(r"error: value of type .* has no member .*")
def nonexistent_method(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return NONEXISTENT_METHOD_RE.search(stderr) is not None

NONEXISTENT_VAR_RE = re.compile(r"error: cannot find .* in scope")
def nonexistent_var(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return NONEXISTENT_VAR_RE.search(stderr) is not None

SHOULD_HAVE_UNWRAPPED_OPTIONAL_RE = re.compile(r"error: value of optional type .* must be unwrapped to a value of type .*")
def should_have_unwrapped_optional(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return SHOULD_HAVE_UNWRAPPED_OPTIONAL_RE.search(stderr) is not None

RETURN_TYPE_ERROR_RE = re.compile(r"error: cannot convert return expression of type .* to return type .*")
def return_type_error(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return RETURN_TYPE_ERROR_RE.search(stderr) is not None

ARGUMENT_TYPE_ERROR_RE = re.compile(r"error: cannot convert value of type .* to expected argument type .*")
def argument_type_error(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return ARGUMENT_TYPE_ERROR_RE.search(stderr) is not None

CLOSURE_RETURN_TYPE_ERROR_RE = re.compile(r"error: cannot convert value of type .* to expected argument type .*")
def closure_result_type_error(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return CLOSURE_RETURN_TYPE_ERROR_RE.search(stderr) is not None

def unknown_type_error_in_call(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return "error: no exact matches in call to" in stderr

def branch_type_error(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return "error: result values in '? :' expression have mismatching types" in stderr

def mutate_immutable(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    markers = [
        "error: left side of mutating operator isn't mutable:",
        "error: cannot assign to value:"
    ]
    return any(m in stderr for m in markers)

RAN_OUT_VAR_RE = re.compile(r"(var|let) \S+$")
def ran_out_of_tokens(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> bool:
    return RAN_OUT_VAR_RE.search(completion) is not None

 
CATEGORY_DEFINITIONS: OrderedDict[str, Tuple[str, Callable[[int, str, str, str, str], bool]]] = OrderedDict([
    ('CompileError', ('Any compilation error occurred', 
        compile_error_category
    )),
    ('CompileError-LinkerError', ('A weird linker error. **Could be caused by translation or evaluation bug?**', 
        f_and(compile_error_category, linker_error)
    )),
    ('CompileError-InvalidSyntax', ('Invalid syntax in the completion. **A few cases could be caused by translation bug (reserved words in arguments)**', 
        f_and(compile_error_category, invalid_syntax)
    )),
    ('CompileError-UseOfDeprecatedUnavailableThings', ('The completion uses a function / method that existed in an old version of Swift.', 
        f_and(compile_error_category, use_of_deprecated_unavailable_things)
    )),
    ('CompileError-UseOfModWithFloat', ('The completion uses % on a float / double.', 
        f_and(compile_error_category, use_of_mod_with_float)
    )),
    ('CompileError-SubscriptStringWithInt', ('Swift does not allow you to subscript a string using an Int', 
        f_and(compile_error_category, subscript_string_with_int)
    )),
    ('CompileError-MissingArgumentLabel', ('An argument label is missing in a function call',
        f_and(compile_error_category, missing_argument_label)
    )),
    ('CompileError-NonExistentMethod', ('An call was made to a non-existent method. **Some cases are caused by translation bug (didnt import Foundation). TODO: classify those cases.**', 
        f_and(compile_error_category, nonexistent_method)
    )),
    ('CompileError-CanNotFindInScope', ('A reference to a non-existent variable / function.  **Some cases are caused by translation bug (didnt import Foundation). TODO: classify those cases.**', 
        f_and(compile_error_category, nonexistent_var)
    )),
    ('CompileError-RedeclarationOfVariable', ('A variable was re-declared', 
        f_and(compile_error_category, redeclared_var)
    )),
    ('CompileError-ShouldHaveUnwrappedOptional', ('A value with Optional type should have been unwrapped / checked.', 
        f_and(compile_error_category, should_have_unwrapped_optional)
    )),
    ('CompileError-ReturnTypeError', ('The type of the return value does not match the declared return type of the function.', 
        f_and(compile_error_category, return_type_error)
    )),
    ('CompileError-ArgumentTypeError', ('The type of an argument to a function does not match the expected type.', 
        f_and(compile_error_category, argument_type_error)
    )),
    ('CompileError-ClosureResultTypeError', ('The type of the return value in a closure does not match the (likely inferred) return type of the closure', 
        f_and(compile_error_category, closure_result_type_error)
    )),
    ('CompileError-UnknownTypeErrorInCall', ('Some misc. type error in a function call / initializer / subscript', 
        f_and(compile_error_category, unknown_type_error_in_call)
    )),
    ('CompileError-BranchTypeMismatch', ('The types of 2 branches do not match', 
        f_and(compile_error_category, branch_type_error)
    )),
    ('CompileError-ImmutableViolation', ('Attempted to mutate something that is immutable (e.g. let vs. var)', 
        f_and(compile_error_category, mutate_immutable)
    )),
    ('CompileError-RanOutOfTokens', ('Ran out of tokens. This category may only be an approximation, hard to tell in general.', 
        f_and(compile_error_category, ran_out_of_tokens)
    )),
    ('CompileError-Else', ('Other compilation errors', 
        f_and(
            compile_error_category, 
            f_not(f_or(
                linker_error,
                invalid_syntax,
                use_of_deprecated_unavailable_things,
                use_of_mod_with_float,
                subscript_string_with_int,
                missing_argument_label,
                nonexistent_method,
                nonexistent_var,
                redeclared_var,
                should_have_unwrapped_optional,
                return_type_error,
                argument_type_error,
                closure_result_type_error,
                unknown_type_error_in_call,
                branch_type_error,
                mutate_immutable,
                ran_out_of_tokens,
            ))
        )
    )),

    ('OK', ('OK', 
        ok_category
    )),
    ('Timeout', ('Is this runtime or compiler or both?', 
        timeout_category
    )),
    ('Exception', ('Any runtime exception occurred', 
        exception_category
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
                if cat_fn(comp.exit_code, comp.status, comp.stderr, comp.stdout, comp.completion):
                    if did_find_cat and not args.allow_multimatch:
                        raise Exception(f'prob = {prob.name}, comp_idx = {comp_idx} is in multiple categories. stderr = {comp.stderr}')
                    elif did_find_cat:
                        pass
                        # print(f'Warning: prob = {prob.name}, comp_idx = {comp_idx} is in multiple categories.')
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