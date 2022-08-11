from __future__ import annotations
import argparse
from collections import OrderedDict, defaultdict
from pathlib import Path
import shutil
import os
import csv
from random import shuffle
from typing import Callable, Dict, List, Tuple
import yaml
try:
    from yaml import CLoader as YAML_Loader
except ImportError:
    print("Warning: You should really consider installing LibYAML (https://pyyaml.org/wiki/LibYAML), this script will run much faster")
    from yaml import Loader as YAML_Loader


def main(Problem):
    parser = argparse.ArgumentParser(description='Categorize errors')
    parser.add_argument('--lang', type=str, help="Language should one of [py, swift, cs, rkt", default=None)
    parser.add_argument('--in-dir', type=str, help='the directory .yaml and .results.yaml files.', default='experiments/swift-davinci-0.2-reworded')
    parser.add_argument('--examples-out-dir', type=str, help='the directory in which to place examples', default='swift_error_examples')
    parser.add_argument('--csv-out', type=str, help='where to write the CSV', default='error_examples/swift_codes.csv')
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
      example_out = examples_out_dir / f"{args.lang}"

      with open(example_out, 'w') as example_f:
        csv_writer = csv.writer(csv_f)
        csv_writer.writerow(['code', 'description', 'count', 'example'])

        for error_name in Problem.error_categories.keys():
          # print(error_name)
          # print (error_categories[error_name])
          completion = Problem.error_categories[error_name]["completions"][0]
          count = Problem.error_categories[error_name]["count"]
          csv_writer.writerow([error_name, "", count, ""])

          example_f.write(f"// ----------- error {error_name} ------------\n")
          example_f.write(f"{completion.completion}\n")
          example_f.write(f"// status = {completion.status}\n")
          example_f.write(f"// exit_code = {completion.exit_code}\n")
          example_f.write(f"/* stderr = \n{completion.stderr}\n*/\n")
          example_f.write(f"/* stdout = \n{completion.stdout}\n*/\n\n")
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
    def __init__(self, completion: str, exit_code: int, status: str, stderr: str, stdout: str) -> None:
        self.completion = completion
        self.exit_code = exit_code
        self.status = status
        self.stdout = stdout
        self.stderr = stderr

class PythonProblem(object):
    def __init__(self) -> None:
      self.error_categories = {
        'IndexError' : {"desc": "", "count": 0, "completions": []},
        'NameError' : {"desc": "", "count": 0, "completions": []},
        'TypeError' : {"desc": "", "count": 0, "completions": []},
        'ValueError' : {"desc": "", "count": 0, "completions": []},
        'NotImplementedError' : {"desc": "", "count": 0, "completions": []},
        'IndentationError' : {"desc": "", "count": 0, "completions": []},
        'KeyError' : {"desc": "", "count": 0, "completions": []},
        'UnboundLocalError' : {"desc": "", "count": 0, "completions": []},
        'AttributeError' : {"desc": "", "count": 0, "completions": []},
        'RecursionError' : {"desc": "", "count": 0, "completions": []},
        'ZeroDivisionError' : {"desc": "", "count": 0, "completions": []},
        'EOFError' : {"desc": "", "count": 0, "completions": []},
        'SyntaxError: BracketNeverClose' : {"desc": "", "count": 0, "completions": []},
        'SyntaxError: Invalid Syntax' : {"desc": "", "count": 0, "completions": []},
        'SyntaxError: UnterminatedStringLiteral' : {"desc": "", "count": 0, "completions": []},
        "SyntaxError: Expected 'else' after 'if'" : {"desc": "", "count": 0, "completions": []},
        "SyntaxError: Expected ':'" : {"desc": "", "count": 0, "completions": []},
      }

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
      if 'IndexError' in error:
        self.increment_error_code('IndexError', completion)
      elif 'NameError' in error:
        self.increment_error_code('NameError', completion)
      elif 'TypeError' in error:
        self.increment_error_code('TypeError', completion)
      elif 'ValueError' in error:
        self.increment_error_code('ValueError', completion)
      elif 'NotImplementedError' in error:
        self.increment_error_code('NotImplementedError', completion)
      elif 'ValueError' in error:
        self.increment_error_code('ValueError', completion)
      elif 'IndentationError' in error:
        self.increment_error_code('IndentationError', completion)
      elif 'KeyError' in error:
        self.increment_error_code('KeyError', completion)
      elif 'UnboundLocalError' in error:
        self.increment_error_code('UnboundLocalError', completion)
      elif 'AttributeError' in error:
        self.increment_error_code('AttributeError', completion)
      elif 'RecursionError' in error:
        self.increment_error_code('RecursionError', completion)
      elif 'ZeroDivisionError' in error:
        self.increment_error_code('ZeroDivisionError', completion)
      elif 'EOFError' in error:
        self.increment_error_code('EOFError', completion)
      elif 'SyntaxError' in error:
        if 'was never close' in error:
          self.increment_error_code('SyntaxError: BracketNeverClose', completion)
        elif 'invalid syntax' in error:
          self.increment_error_code('SyntaxError: Invalid Syntax', completion)
        elif "expected ':'" in error:
          self.increment_error_code("SyntaxError: Expected ':'", completion)
        elif "unterminated string literal" in error:
          self.increment_error_code('SyntaxError: UnterminatedStringLiteral', completion)
        elif "expected 'else' after 'if' expression":
          self.increment_error_code("SyntaxError: Expected 'else' after 'if'", completion)
        else:
          print(error)
          raise Exception("sd")
      elif '/tmp/tmp125ptmgu.py' in error or '/tmp/tmp0x72crx8.py' in error or '/tmp/tmp4uvuxbt9.py' in error or '/tmp/tmpev48bzdh.py' in error:
        pass
      else:
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
              completion = ProblemCompletion(c, r['exit_code'], r['status'], r['stderr'], r['stdout'])
              comps.append(completion)
              
              self.record_error_types(r['stderr'], completion)


if __name__ == "__main__":
    main(PythonProblem())