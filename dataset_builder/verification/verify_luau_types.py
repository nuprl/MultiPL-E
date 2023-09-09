import datasets
import tempfile
import subprocess
import os
import sys
import argparse

parser = argparse.ArgumentParser(
    description='Verify luau types of a prompt dataset')
parser.add_argument('dataset', type=str, help='Path to the dataset')
args = parser.parse_args()


def run_luau_analyze(code):
    with tempfile.NamedTemporaryFile(mode='w', suffix='.lua') as f:
        f.write(code)
        f.flush()
        try:
            subprocess.run(['luau-analyze', f.name], stdout=subprocess.PIPE,
                           stderr=subprocess.PIPE, check=True)
        except subprocess.CalledProcessError as e:
            return e.stderr.decode('utf-8')
        return None


dataset = datasets.load_dataset('json', data_files=args.dataset, split='train')
for example in dataset:
    prompt = example['prompt']
    tests = example["tests"]
    # add some stuff to do the magic
    code = "--!strict\n\n" + prompt
    code += "  assert(false)\nend"
    code += "\n\n"
    code += tests
    analysis = run_luau_analyze(code)
    if analysis is not None:
        if "range" not in analysis and "list" not in analysis:
            print("ERROR")
            print(analysis)
            print(code)
            sys.exit(1)
