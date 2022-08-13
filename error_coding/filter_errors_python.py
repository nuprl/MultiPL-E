from __future__ import annotations
import argparse
from collections import OrderedDict, defaultdict
from distutils.log import error
from pathlib import Path
import shutil
import os
import csv
import re
from random import shuffle
from typing import Callable, Dict, List, Tuple
import yaml
try:
    from yaml import CLoader as YAML_Loader
except ImportError:
    print("Warning: You should really consider installing LibYAML (https://pyyaml.org/wiki/LibYAML), this script will run much faster")
    from yaml import Loader as YAML_Loader


def main(Problem):
    parser = argparse.ArgumentParser(description='Categorize errors. An example python filter_errors_python.py --lang py --in-dir ../experiments/py-davinci-0.2-reworded/ --examples-out-dir python-error-examples --csv-out ../error_examples/python_codes.csv')
    parser.add_argument('--lang', type=str, help="Language should one of [py, swift, cs, rkt", default=None)
    parser.add_argument('--in-dir', type=str, help='the directory .yaml and .results.yaml files.', required=True)
    parser.add_argument('--examples-out-dir', type=str, help='the directory in which to place examples', required=True)
    parser.add_argument('--csv-out', type=str, help='where to write the CSV', required=True)
    parser.add_argument('--n-examples', type=int, help='How many examples for each error code', default=None),
    parser.add_argument('--no-shuffle-examples', action='store_false', help='Disabling shuffling of examples', dest='shuffle_examples', default=True)

    args = parser.parse_args()
    
    assert args.lang in ['py', 'swift', 'cs', 'rkt']

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

    print(f"Writing {args.lang} codes to {csv_out}")
    print(f"Writing {args.lang} examples to {examples_out_dir}")

    load_problems(Problem, args.lang, in_dir)
    
    with csv_out.open('w', newline='') as csv_f:
        csv_writer = csv.writer(csv_f)
        csv_writer.writerow(['code', 'description', 'count', 'gold', 'examples'])

        for error_name in Problem.error_categories.keys():
          example_out = examples_out_dir / f"{error_name}.{args.lang}"

          with open(example_out, 'w') as example_f:
            # print(error_name)
            # print (error_categories[error_name])
            print (error_name)
            count = Problem.error_categories[error_name]["count"]
            desc = Problem.error_categories[error_name]["desc"]
            gold = Problem.error_categories[error_name]["gold"]
            csv_writer.writerow([error_name, desc, count, gold, example_out])
            for completion in Problem.error_categories[error_name]["completions"]:
              example_f.write(f"{Problem.single_line_comments} ---- {completion.prob_name} --- completion {completion.completion_idx} ---- \n")
              example_f.write(f"{completion.completion}\n")
              example_f.write(f"{Problem.single_line_comments} status = {completion.status}\n")
              example_f.write(f"{Problem.single_line_comments} exit_code = {completion.exit_code}\n")
              example_f.write(f"{Problem.multi_line_comments} stderr = \n{completion.stderr}\n{Problem.multi_line_comments}\n")
              example_f.write(f"{Problem.multi_line_comments} stdout = \n{completion.stdout}\n{Problem.multi_line_comments}\n\n")
              example_f.write("\n\n\n\n")

def load_problems(Problem, lang:str, in_dir: Path) -> Dict[str, Problem]:
    for entry in in_dir.iterdir():
        assert entry.is_file()

        entry_str = str(entry)
        if entry_str.endswith('.results.yaml'):
            continue
        if entry_str.endswith('.yaml'):
            results_entry = Path(entry_str.removesuffix('.yaml') + '.results.yaml')
            assert results_entry.exists()

            Problem.from_yaml_files(lang, entry, results_entry)

class ProblemCompletion(object):
    def __init__(self, completion: str, prob_name: str, completion_idx: int, exit_code: int, status: str, stderr: str, stdout: str) -> None:
        self.completion = completion
        self.prob_name = prob_name
        self.completion_idx = completion_idx
        self.exit_code = exit_code
        self.status = status
        self.stdout = stdout
        self.stderr = stderr

class PythonProblem(object):
    def __init__(self) -> None:
      self.error_categories = {
        'IndexError' : {"regex": "IndexError", "desc": "List index out of range", "gold":" ---- HumanEval_89_encrypt --- completion 7", "count": 0, "completions": []},
        'NameError' : {"regex": "NameError", "desc": "The name is not defined", "gold":" ---- HumanEval_127_intersection --- completion 0 ","count": 0, "completions": []},
        'TypeError' : {"regex": "TypeError", "desc": "Type of objects in an operation is inappropriate", "count": 0, "gold": "---- HumanEval_137_compare_one --- completion 1 ----", "completions": []},
        'ValueError' : {"regex": "ValueError", "desc": "A function received an argument of the correct type but an inappropriate value", "gold":"HumanEval_155_even_odd_count --- completion 0", "count": 0, "completions": []},
        'NotImplementedError' : {"regex": "NotImplementedError", "desc": "Raised by Codex generated code", "gold":"HumanEval_20_find_closest_elements --- completion 0", "count": 0, "completions": []},
        'IndentationError' : {"regex": "IndentationError", "desc": "Indentation of a line is wrong", "gold":"HumanEval_129_minPath --- completion 27", "count": 0, "completions": []},
        'KeyError' : {"regex": "KeyError", "desc": "Request key is not present in dictionary", "gold":"HumanEval_19_sort_numbers --- completion 29", "count": 0, "completions": []},
        'UnboundLocalError' : {"regex": "UnboundLocalError", "desc": "A local variable is referenced before assignment", "gold":"HumanEval_129_minPath --- completion 31", "count": 0, "completions": []},
        'AttributeError' : {"regex": "AttributeError", "desc": "Requested attribute is not present in the object", "gold":"---- HumanEval_92_any_int --- completion 0 ----", "count": 0, "completions": []},
        'RecursionError' : {"regex": "RecursionError", "desc": "Maximum recursion depth exceeded", "gold":"HumanEval_138_is_equal_to_sum_even --- completion 1", "count": 0, "completions": []},
        'ZeroDivisionError' : {"regex": "ZeroDivisionError", "desc": "Division by zero", "gold":"HumanEval_128_prod_signs --- completion 2", "count": 0, "completions": []},
        'EOFError' : {"regex": "EOFError", "desc": "EOF when reading a line", "gold": "HumanEval_41_car_race_collision --- completion 1", "count": 0, "completions": []},
        # 'SyntaxError: BracketNeverClose' : {"regex": "was never close", "desc": "'[' never closed", "count": 0, "completions": []},
        # 'SyntaxError: Invalid Syntax' : {"regex": "invalid syntax", "desc": "", "count": 0, "completions": []},
        # 'SyntaxError: UnterminatedStringLiteral' : {"regex": "unterminated string literal", "desc": "string literal never closed", "count": 0, "completions": []},
        # "SyntaxError: Expected 'else' after 'if'" : {"regex": "expected 'else' after 'if' expression", "desc": "", "count": 0, "completions": []},
        # "SyntaxError: Expected ':'" : {"regex": "expected ':'", "desc": "Expected ':'", "count": 0, "completions": []},
        'SyntaxError' : {"regex": "(was never close)|(invalid syntax)|(unterminated string literal)|(expected)", "gold":" HumanEval_43_pairs_sum_to_zero --- completion 0", "desc": "Invalid syntax due to un-matched closing brace, bracket, or colon ':'", "count": 0, "completions": []},
        'Timeout' : {"regex":"", "gold": "---- HumanEval_100_make_a_pile --- completion 106 ----", "desc":"Program is running for more than 5 mins", "count" : 0, "completions":[]}
      }
      self.single_line_comments = "#"
      self.multi_line_comments = "'''"

    def program_for_completion(self, completion_idx: int) -> str:
        return self.prompt + self.completions[completion_idx].completion + "\n" + self.tests

    def filter_result(self, result):
      if result['status'] == 'OK':
        return False
      if result['status'] == "SyntaxError" or 'AssertionError' not in result['stderr']:
        return True
      return False

    def increment_error_code(self, error, completion):  
      self.error_categories[error]["count"] += 1
      self.error_categories[error]["completions"] += [completion]

    def record_error_types(self, error, completion):
      if error == None or str(error) == "None":
        return

      for error_name in self.error_categories.keys():
        if re.findall(self.error_categories[error_name]["regex"], error, re.IGNORECASE) != []:
          self.increment_error_code(error_name, completion)
          return
      print(error)
      if '/tmp/tmp125ptmgu.py' in error or '/tmp/tmp0x72crx8.py' in error or '/tmp/tmp4uvuxbt9.py' in error or '/tmp/tmpev48bzdh.py' in error:
        return
      
      print (error)
      raise Exception("Error not found")


    def from_yaml_files(self, lang:str, yaml_path: Path, results_yaml_path: Path) -> Problem:
        with open(yaml_path, 'r') as f:
            prob_data = yaml.load(f, YAML_Loader)
        with open(results_yaml_path, 'r') as f:
            results_data = yaml.load(f, YAML_Loader)
        
        prob_name = prob_data['name']
        assert prob_name == results_data['name']
        assert prob_data['language'] == lang and results_data['language'] == lang
        prompt = prob_data['prompt']
        tests = prob_data['tests']

        completions_raw = prob_data['completions']
        results = results_data['results']
        assert len(completions_raw) == len(results)

        comps: List[ProblemCompletion] = []
        for c, r in zip(completions_raw, results):
            assert prompt + c + "\n" + tests == r['program']
            if self.filter_result(r):
              completion = ProblemCompletion(r['program'], prob_name, len(comps), r['exit_code'], r['status'], r['stderr'], r['stdout'])
              comps.append(completion)
              
              self.record_error_types(r['stderr'], completion)
            elif r['status'] == 'Timeout':
              completion = ProblemCompletion(r['program'], prob_name, len(comps), r['exit_code'], r['status'], r['stderr'], r['stdout'])
              comps.append(completion)
              self.increment_error_code('Timeout', completion)
              


if __name__ == "__main__":
    main(PythonProblem())