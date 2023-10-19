import datasets
from pathlib import Path
import gzip
import json
import argparse


parser = argparse.ArgumentParser()
parser.add_argument('--path', type=str, required=True)
parser.add_argument('--push', type=str, required=True)
args = parser.parse_args()

exs = []


def trim_prog(prog, lang):
    if lang == "py":
        return prog[:prog.index("def check(")].strip()
    else:
        raise NotImplementedError(f"trim_prog for {lang}")


def get_error_from_trace(trace, lang):
    if lang == "py":
        if "AssertionError" not in trace or "in check" not in trace:
            return None
        err = trace[trace.index("assert candidate"):]
        err = err[:err.index("\n")].strip()
        return err
    else:
        raise NotImplementedError(f"get_error_from_trace for {lang}")


for path in Path(args.path).glob("**/*.results.json.gz"):
    with gzip.open(path, "rt") as f:
        data = json.load(f)

    ex = {}
    ex['name'] = data['name']
    lang = data['language']
    ex['language'] = lang
    ex['tests'] = data['tests']
    ex['prompt'] = data['prompt']
    ex['stop_tokens'] = data['stop_tokens']

    # find first correct
    correct = None
    for r in data["results"]:
        if r["status"] == "OK":
            correct = trim_prog(r["program"], lang)
            break

    if correct is None:
        continue

    ex['correct'] = correct

    # find all unique incorrect
    err_to_prog = {}

    for r in data["results"]:
        if r["status"] == "Exception":
            err = get_error_from_trace(r["stderr"], lang)
            if err is None:
                continue
            err_to_prog[err] = trim_prog(r["program"], lang)

    errs = []
    mutants = []
    for err, prog in err_to_prog.items():
        errs.append(err)
        mutants.append(prog)

    ex['mutants'] = mutants
    ex['errors'] = errs
    exs.append(ex)

ds = datasets.Dataset.from_list(exs)
print(f"Dataset size: {len(ds)}")
ds.push_to_hub(args.push, private=True)
