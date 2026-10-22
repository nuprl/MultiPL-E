"""Unpack the retained Sounio samples for offline native re-evaluation.

No API requests, new generations or numerical scoring are performed.
The destination must not exist; unpacking never overwrites another run.
"""
import argparse
import gzip
import json
import lzma
from pathlib import Path
import re


def unpack(source, destination):
    records = []
    seen = set()
    with lzma.open(source, "rt", encoding="utf8") as stream:
        for line in stream:
            row = json.loads(line)
            group, sample = row["group"], row["sample"]
            name = sample["name"]
            if not re.fullmatch(r"(?:humaneval|mbpp)-sio-(?:baseline|candidate)-0\.2-reworded", group):
                raise ValueError("Invalid sample group")
            if not re.fullmatch(r"(?:HumanEval|mbpp)_[0-9]+_[A-Za-z0-9_]+", name):
                raise ValueError("Invalid sample name")
            if (group, name) in seen:
                raise ValueError("Duplicate sample")
            seen.add((group, name))
            if sample["language"] != "sio" or sample["prompt"] != "":
                raise ValueError("Unexpected language/prompt representation")
            if len(sample["completions"]) != 1 or len(sample["raw_completions"]) != 1:
                raise ValueError("Expected one retained completion")
            if not all(isinstance(sample[key], str) for key in ("tests", "original_prompt")):
                raise ValueError("Invalid sample strings")
            records.append((group, name, sample))
    if not records:
        raise ValueError("No samples")
    destination.mkdir(parents=True, exist_ok=False)
    for group, name, sample in records:
        folder = destination / group
        folder.mkdir(exist_ok=True)
        with gzip.open(folder / (name + ".json.gz"), "wt", encoding="utf8") as output:
            json.dump(sample, output, ensure_ascii=False)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("destination", type=Path)
    parser.add_argument("--source", type=Path, default=Path(__file__).with_name("samples.jsonl.xz"))
    args = parser.parse_args()
    unpack(args.source, args.destination)
