import datasets
import argparse
import gzip
import json
import importlib
from pathlib import Path
from tqdm import tqdm

DATASET_REVISION = "bf4f3c31a1e0a164b7886c9eb04f82534edf4ce9"

def main():
    args = argparse.ArgumentParser()

    args.add_argument(
        "--output-dir",
        type=str,
        help="Directory in which to place JSON files with completions. The default is root_dataset-lang-model_name-temperature-reworded",
    )

    args.add_argument(
        "--output-dir-prefix",
        type=str,
        help="Prefix for the output directory"
    )
    
    args.add_argument(
        "--lang", type=str, required=True, help="Target language for completions"
    )
    args.add_argument(
        "--root-dataset", type=str, required=True, help="either mbpp or humaneval"
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

    model = importlib.import_module(args.model_name)

    if args.output_dir is None:
        args.output_dir = (
            f"{args.root_dataset}-{args.lang}-{model.name}-{args.temperature}-reworded"
        )

    if args.output_dir_prefix is not None:
        args.output_dir = f"{args.output_dir_prefix}/{args.output_dir}"

    exp_dir = Path(args.output_dir)
    if not exp_dir.exists():
        exp_dir.mkdir()

    problems = datasets.load_dataset(
        "nuprl/MultiPL-E", f"{args.root_dataset}-{args.lang}", 
        revision=DATASET_REVISION
    )
    problems = problems["test"]
    start_index = args.input_start_index if args.input_start_index is not None else 0
    stop_index = min(
        len(problems),
        start_index + args.input_limit
        if args.input_limit is not None
        else len(problems),
    )
    problems = problems.select(range(start_index, stop_index))
    for problem in tqdm(problems, unit="problems"):
        # NOTE(arjun): This is a litte hack to delay loading the model, so that we fail faster.
        problem_filename = exp_dir / f"{problem['name']}.json.gz"
        if problem_filename.exists():
            with gzip.open(problem_filename, "rt") as f:
                existing = json.loads(f.read())
            completions = existing["completions"]
        else:
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
        with gzip.open(problem_filename, "wt") as f:
            json.dump(result_json, f)


if __name__ == "__main__":
    main()
