"""
This is a script that turns a directory of MultiPL-E results into a dataset and
uploads it to the Hugging Face Hub.
"""
import datasets
from pathlib import Path
from multipl_e.util import gunzip_json
import argparse
import re


def process_executions(experiment_name: str, executions_path: Path):
    assert executions_path.name.endswith(".results.json.gz")
    executions = gunzip_json(executions_path)
    completions_path = executions_path.parent / (
        executions_path.name[:-16] + ".json.gz"
    )
    completions = gunzip_json(completions_path)
    if completions is None or executions is None:
        return None
    return {
        "experiment": experiment_name,
        "problem": completions["name"],
        "language": completions["language"],
        "top_p": completions["top_p"] if "top_p" in completions else 0.0,
        "max_tokens": completions["max_tokens"] if "max_tokens" in completions else 0,
        "prompt": completions["prompt"],
        "tests": completions["tests"],
        "stop_tokens": completions["stop_tokens"]
        if "stop_tokens" in completions
        else [],
        "completions": completions["completions"],
        "programs": [result["program"] for result in executions["results"]],
        "stdouts": [result["stdout"] for result in executions["results"]],
        "stderrs": [result["stderr"] for result in executions["results"]],
        "exit_codes": [result["exit_code"] for result in executions["results"]],
        "statuses": [result["status"] for result in executions["results"]],
        "timestamps": [
            result["timestamp"] if "timestamp" in result else 0
            for result in executions["results"]
        ],
    }


def process_experiment(experiment_name: str, experiment_path: Path):
    results = []
    for executions_path in experiment_path.glob("*.results.json.gz"):
        maybe_dict = process_executions(experiment_name, executions_path)
        if maybe_dict is not None:
            results.append(maybe_dict)
    return results


def main():
    args = argparse.ArgumentParser()
    args.add_argument("experiment", type=Path)
    args.add_argument("--repo", type=str, default="nuprl/MultiPL-E-completions")
    args = args.parse_args()
    experiment_name = args.experiment.name
    config_name = re.sub(r"\W", ".", experiment_name)
    # Check if the experiment already exists in the Hugging Face Hub
    try:
        existing_dataset = datasets.load_dataset(args.repo, config_name, split="test")
        if existing_dataset is not None:
            print(
                f"Error: Experiment '{experiment_name}' already exists in the dataset."
            )
            print("Aborting to prevent overwriting existing data.")
            return
    except:
        # If the dataset is not found, we can proceed with uploading
        pass
    dataset = process_experiment(experiment_name, args.experiment)
    if len(dataset) == 0:
        print(f"Warning: No results found for experiment '{experiment_name}'.")
        return
    dataset = datasets.Dataset.from_list(dataset)
    print(f"datasets.load_dataset('{args.repo}', '{config_name}', split='test')")
    dataset.push_to_hub(repo_id=args.repo, config_name=config_name, split="test")


if __name__ == "__main__":
    main()
