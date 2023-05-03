import datasets
import argparse
import gzip
import json
from pathlib import Path
from tqdm import tqdm
import sys

DATASET_REVISION = "bf4f3c31a1e0a164b7886c9eb04f82534edf4ce9"

TOP_P = 0.95
MAX_TOKENS = 512

def from_remote_dataset(args):
    problems = datasets.load_dataset(
        "nuprl/MultiPL-E", f"{args.root_dataset}-{args.lang}", revision=DATASET_REVISION
    )
    start_index = args.input_start_index if args.input_start_index is not None else 0
    stop_index = min(
        len(problems),
        start_index + args.input_limit
        if args.input_limit is not None
        else len(problems),
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
    return problems


def from_local_dataset(args):
    with open(args.dataset, "r") as f:
        problems_list = [ json.loads(line) for line in f ]
        start_index = (
            args.input_start_index if args.input_start_index is not None else 0
        )
        stop_index = min(
            len(problems_list),
            start_index + args.input_limit
            if args.input_limit is not None
            else len(problems_list),
        )
        problems = datasets.Dataset.from_list(problems_list[start_index:stop_index])
    return problems

def partial_arg_parser():
    args = argparse.ArgumentParser()

    args.add_argument(
        "--output-dir",
        type=str,
        help="Directory in which to place JSON files with completions. The default is root_dataset-lang-model_name-temperature-reworded",
    )

    args.add_argument(
        "--output-dir-prefix", type=str, help="Prefix for the output directory"
    )

    args.add_argument(
        "--use-local",
        action="store_true",
        help="Use this flag when running from local prompts.",
    )

    # Reuired when use local is passed
    args.add_argument(
        "--dataset",
        type=str,
        required="--use-local" in sys.argv,
        help="The local dataset in JSON format to get from this computer.",
    )
    # Only required when use local is not passed
    args.add_argument(
        "--lang",
        type=str,
        required="--use-local" not in sys.argv,
        help="Target language for completions",
    )
    args.add_argument(
        "--root-dataset",
        type=str,
        required="--use-local" not in sys.argv,
        help="either mbpp or humaneval",
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
    args.add_argument(
        "--prompt-prefix", type=str, help="A prefix to prepend to every prompt"
    )
    return args

def make_main(args, model_name, gen_completions):

    assert "-" not in model_name, "Model name must not have hyphens"

    if args.output_dir is None:
        args.output_dir = (
            (
                f"{args.root_dataset}-{args.lang}-{model_name}-{args.temperature}-reworded"
            )
            if not args.use_local
            else (
                f"{args.dataset.split('/')[-1].split('.')[0]}-{model_name}-{args.temperature}-reworded"
            )
        )

    if args.output_dir_prefix is not None:
        args.output_dir = f"{args.output_dir_prefix}/{args.output_dir}"

    exp_dir = Path(args.output_dir)
    if not exp_dir.exists():
        exp_dir.mkdir()

    if args.use_local:
        problems = from_local_dataset(args)
    else:
        problems = from_remote_dataset(args)

    for problem in tqdm(problems, unit="problems"):
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
            this_batch = min(args.batch_size, args.completion_limit - len(completions))
            if this_batch == 0:
                break
            if args.prompt_prefix is not None:
                prompt = args.prompt_prefix +  problem["prompt"]
            else:
                prompt = problem["prompt"]
            new_completions = gen_completions(
                prompt=prompt,
                max_tokens=MAX_TOKENS,
                temperature=args.temperature,
                n=this_batch,
                top_p=TOP_P,
                stop=problem["stop_tokens"],
            )
            completions.extend(new_completions)

        result_json = {
            "name": problem["name"],
            "language": problem["language"],
            "temperature": args.temperature,
            "top_p": TOP_P,
            "max_tokens": MAX_TOKENS,
            "prompt": problem["prompt"],
            "tests": problem["tests"],
            "completions": completions,
            "stop_tokens": problem["stop_tokens"],
        }
        with gzip.open(problem_filename, "wt") as f:
            json.dump(result_json, f)

def stop_at_stop_token(decoded_string, stop_tokens):
    """
    Produces the prefix of decoded_string that ends at the first occurrence of
    a stop_token.

    WARNING: the decoded_string *must not* include the prompt, which may have stop tokens
    itself.
    """
    min_stop_index = len(decoded_string)
    for stop_token in stop_tokens:
        stop_index = decoded_string.find(stop_token)
        if stop_index != -1 and stop_index < min_stop_index:
            min_stop_index = stop_index
    return decoded_string[:min_stop_index]
