import argparse
import gzip
import json
import importlib
from pathlib import Path
from tqdm import tqdm
from .bigcode_base import FIM_MIDDLE, FIM_PREFIX, FIM_SUFFIX

def read_json_gz(p: Path):
    """
    read a json.gz or json file and return a JSON object.
    """
    if p.suffix == ".gz":
        with gzip.open(p, 'rt') as f:
            return json.load(f)
    else:
        with open(p) as f:
            return json.load(f)

def get_result_file_name(p: Path, model_name: str) -> Path:
    name = p.name.replace(".json", f"-{model_name}.results.json")
    return Path(name)

def dump_json_gz(p: Path, obj):
    """
    dumps an object to json.
    """
    if p.suffix == ".gz":
        with gzip.open(p, "wt") as f:
            f.write(json.dumps(obj, indent=4))
    else:
        with open(p, "w") as f:
            f.write(json.dumps(obj, indent=4))

def generate_completions(prompt_file: Path, args, model):
    prompts = read_json_gz(prompt_file)
    processed_prompts = []
    for prompt in tqdm(prompts, unit="files"):
        results = []
        body = prompt["body"]
        header = prompt["prompt"]
        for line_index in tqdm(range(len(body)), unit="lines"):
            line = body[line_index]
            if args.filter_empty_lines and line.strip() == "":
                continue
            prefix = header + "\n".join(body[:line_index])
            suffix = "\n".join(body[line_index + 1:])
            submitted_prompt = f"{FIM_PREFIX}{prefix}{FIM_SUFFIX}{suffix}{FIM_MIDDLE}"
            new_completions = model.completions(
                prompt=submitted_prompt,
                max_tokens=args.max_tokens,
                temperature=args.temperature,
                n=args.batch_size,
                top_p=args.top_p,
                stop=[],
            )
            results.append({ 
                "line": line,
                "submitted_prompt": submitted_prompt,
                "results": [{"completion": completion, "correctness": completion.strip() == line.strip()} 
                                for completion in new_completions]
                }
            )
        
        processed_prompts.append({
            "language": prompt["language"],
            "parameters": {
                "max_tokens": args.max_tokens,
                "temperature": args.temperature,
                "top_p": args.top_p,
                "stop": []
            },
            "prompt": prompt["prompt"],
            "body": prompt["body"],
            "results": results
        })

    return processed_prompts

def main():

    args = argparse.ArgumentParser()

    args.add_argument(
        "--input-files",
        type=Path,
        nargs="*",
        help="files used for input.",
    )

    args.add_argument(
        "--output-dir",
        type=Path,
        help="Directory in which to place JSON files with completions. The default is fim-humaneval",
        default="fim-humaneval"
    )

    args.add_argument(
        "--max-tokens", type=int, default=100, help="Maximum number of tokens to generate"
    )
    
    args.add_argument(
        "--temperature", type=float, default=0.2, help="Temperature of completions"
    )

    args.add_argument(
        "--batch-size", type=int, default=20, help="Number of completions to batch"
    )

    args.add_argument(
        "--top-p", type=float, default=0.95, help="Number of completions to batch"
    )

    args.add_argument(
        "--model-name",
        type=str,
        required=True,
        help="The model name. To add a new model, copy and modify codegen.py",
    )

    args.add_argument(
        "--filter-empty-lines",
        type=int,
        choices=[0, 1],
        default=0,
        help="Should empty lines be removed? (0 = no filtering, 1 = only filter empty lines (including line with space/tabs). default: 0)"
    )

    args = args.parse_args()

    model = importlib.import_module(args.model_name)

    args.output_dir.mkdir(mode=0o755, parents=True, exist_ok=True)
    for file in args.input_files:
        results_file = generate_completions(file, args, model)
        dump_json_gz(args.output_dir / get_result_file_name(file, args.model_name), results_file)

if __name__ == "__main__":
    main()