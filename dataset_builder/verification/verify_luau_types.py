import datasets
import tempfile
import subprocess
import os
import sys
import argparse

parser = argparse.ArgumentParser(
    description='Verify luau types of a prompt dataset')
parser.add_argument('dataset', type=str, help='Path to the dataset')
parser.add_argument('output', type=str, help='Path to the output dataset')
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


def proc(example):
    prompt = example['prompt']
    tests = example["tests"]
    # add some stuff to do the magic
    code = "--!strict\n\n" + prompt
    code += "  assert(false)\nend"
    code += "\n\n"
    code += tests
    analysis = run_luau_analyze(code)
    if analysis is not None:
        print(f"Error in {example['name']}")
        return False
    return True


dataset = datasets.load_dataset('json', data_files=args.dataset, split='train')

len_before = len(dataset)
dataset = dataset.filter(proc)
len_after = len(dataset)

print(f"Removed {len_before - len_after} ill-typed examples")
print(f"Remaining examples: {len_after}")

# write as jsonl
dataset.to_json(args.output, orient='records', lines=True)
