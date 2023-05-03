"""
This is a script that turns a directory of MultiPL-E results into a dataset and
uploads it to the Hugging Face Hub. At the moment, a few bits are hardcoded,
e.g., it only uploads to bigcode/MultiPL-E-completions. If you generalize the
script, please submit a PR.
"""
import datasets
from pathlib import Path
from multipl_e.util import gunzip_json
import argparse

def process_executions(executions_path: Path):
    assert executions_path.name.endswith(".results.json.gz")
    executions = gunzip_json(executions_path)
    completions_path = executions_path.parent / (executions_path.name[:-16] + ".json.gz")
    completions = gunzip_json(completions_path)
    if completions is None or executions is None:
        return None
    return {
        "experiment": executions_path.parent.name,
        "problem": completions["name"],
        "language": completions["language"],
        "top_p": completions["top_p"] if "top_p" in completions else 0.0,
        "max_tokens": completions["max_tokens"] if "max_tokens" in completions else 0,
        "prompt": completions["prompt"],
        "tests": completions["tests"],
        "stop_tokens": completions["stop_tokens"] if "stop_tokens" in completions else [],
        "completions": completions["completions"],
        "programs": [ result["program"] for result in executions["results"] ],
        "stdouts": [ result["stdout"] for result in executions["results"] ],
        "stderrs": [ result["stderr"] for result in executions["results"] ],
        "exit_codes": [ result["exit_code"] for result in executions["results"] ],
        "statuses": [ result["status"] for result in executions["results"] ],
        "timestamps": [ result["timestamp"] for result in executions["results"] ],
    }

def process_experiment(experiment_path: Path):
    results = [] 
    for executions_path in experiment_path.glob("*.results.json.gz"):
        maybe_dict = process_executions(executions_path)
        if maybe_dict is not None:
            results.append(maybe_dict)
    return results

def main():

    args = argparse.ArgumentParser()
    args.add_argument("experiment", type=Path)
    args = args.parse_args()
    dataset = process_experiment(args.experiment)
    dataset = datasets.Dataset.from_list(dataset)
    assert len(set(dataset["experiment"])) == 1
    # Replace non-word characters with dots using regex
    import re
    split = re.sub(r"\W", ".", dataset["experiment"][0])
    print(f"datasets.load_dataset('bigcode/MultiPL-E-completions', split='{split}')")
    dataset.push_to_hub(
    repo_id="bigcode/MultiPL-E-completions",
    private=True,
    split=split)

if __name__ == "__main__":
    main()
