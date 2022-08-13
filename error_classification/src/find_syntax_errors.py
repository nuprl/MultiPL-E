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


def dummy_category(exit_code: int, status: str, stderr: str, stdout: str) -> bool:
    return True


CATEGORY_DEFINITIONS: OrderedDict[str, Tuple[str, Callable[[int, str, str, str], bool]]] = OrderedDict([
    ('dummy', ('example description', dummy_category)),
])


def main():
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

    problems = load_problems(args.lang, in_dir)
    category_results: OrderedDict[str, List[Tuple[str, int]]] = OrderedDict([(k, list()) for k in CATEGORY_DEFINITIONS.keys()])
    for prob in problems.values():
        for comp_idx in range(len(prob.completions)):
            comp = prob.completions[comp_idx]
            did_find_cat = False
            for cat_name, (_, cat_fn) in CATEGORY_DEFINITIONS.items():
                if cat_fn(comp.exit_code, comp.status, comp.stderr, comp.stdout):
                    assert not did_find_cat
                    did_find_cat = True
                    category_results[cat_name].append((prob.name, comp_idx))
            assert did_find_cat
    
    with csv_out.open('w', newline='') as csv_f:
        csv_writer = csv.writer(csv_f)
        csv_writer.writerow(['code', 'description', 'count', 'example'])

        for cat_name, example_keys in category_results.items():
            desc = CATEGORY_DEFINITIONS[cat_name][0]
            example_out = examples_out_dir / f"{cat_name}.{args.lang}"
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
                    


    
    


def load_problems(lang:str, in_dir: Path) -> Dict[str, Problem]:
    problems: Dict[str, Problem] = {}
    for entry in in_dir.iterdir():
        assert entry.is_file()

        entry_str = str(entry)
        if entry_str.endswith('.results.yaml'):
            continue
        if entry_str.endswith('.yaml'):
            results_entry = Path(entry_str.removesuffix('.yaml') + '.results.yaml')
            assert results_entry.exists()

            prob = Problem.from_yaml_files(lang, entry, results_entry)
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
    def from_yaml_files(lang:str, yaml_path: Path, results_yaml_path: Path) -> Problem:
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
            if r['status'] == 'SyntaxError':
              #Only append SyntaxErrors
              comps.append(ProblemCompletion(c, r['exit_code'], r['status'], r['stderr'], r['stdout']))

        return Problem(prob_name, prompt, tests, comps)



if __name__ == "__main__":
    main()