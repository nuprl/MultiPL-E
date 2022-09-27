#!/usr/bin/env python3
from re import sub
import yaml
import json
from pathlib import Path
import argparse
import subprocess

def yaml2json(yaml_path: Path, json_path: Path):
    with yaml_path.open() as f:
        data = yaml.safe_load(f)
    with json_path.open("w") as f:
        json.dump(data, f, indent=2)
    yaml_path.unlink()


if __name__ == "__main__":
    args = argparse.ArgumentParser()
    args.add_argument("yaml", type=str, help="The yaml file to convert")
    args = args.parse_args()
    yaml_path = Path(args.yaml)
    json_path = yaml_path.with_suffix(".json")
    yaml2json(yaml_path, json_path)