import datasets
import argparse
import gzip
import json
from pathlib import Path
from tqdm import tqdm
import json

def main():
    args = argparse.ArgumentParser()

    args.add_argument(
        "--output-dir",
        type=str,
        required=True,
        help="Directory in which to place JSON files with completions.",
    )
    args.add_argument(
        "--dataset", type=str, required=True, help="The local dataset in JSON format to get from this computer."
    )
    args.add_argument(
        "--model-name",
        type=str,
        required=True,
        help="either incoder or codegen. To add a new model, copy and modify codegen.py",
    )
    args.add_argument("--temperature", type=float, required=True)
    args.add_argument(
        "--input-start-index",
        type=int,
        help="Index into the dataset. If omitted, starts from the beginning",
    )
    args.add_argument(
        "--input-limit", type=int, help="Number of items to process from the dataset"
    )
    args.add_argument("--completion-limit", type=int, default=200)
    args.add_argument(
        "--batch-size", type=int, default=16, help="Number of completions to batch"
    )
    args = args.parse_args()

    model = __import__(args.model_name)

    exp_dir = Path(args.output_dir)
    if not exp_dir.exists():
        exp_dir.mkdir()

    with open(args.dataset, "r") as f:
        problems = datasets.Dataset.from_list(
            json.load(f)
        )
    for problem in iter(problems):
        completions = []
        if len(completions) > args.completion_limit:
            # Not strictly necessary, but avoid a pointless rewriting of the file with no changes.
            continue

        for _ in tqdm(
            range(len(completions), args.completion_limit, args.batch_size),
            unit="completions",
        ):
            new_completions = model.completions(
                prompt=problem["prompt"],
                max_tokens=512,
                temperature=args.temperature,
                n=args.batch_size,
                top_p=0.95,
                stop=problem["stop_tokens"],
            )
            completions.extend(new_completions)
        result_json = {
            "name": problem["name"],
            "language": problem["language"],
            "prompt": problem["prompt"],
            "tests": problem["tests"],
            "completions": completions,
            "stop_tokens": problem["stop_tokens"],
        }
        with open(exp_dir.joinpath(problem["name"] + ".json"), "w+") as f:
            json.dump(result_json, f)


if __name__ == "__main__":
    main()
