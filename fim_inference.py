# I've hacked this to hardcode StarCoder2
import json
from pathlib import Path
import argparse
from more_itertools import chunked
from tqdm import tqdm
import starcoder2


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--model-path", type=Path, required=True, help="Module name of the model to use")
    parser.add_argument("--batch-size", type=int, required=True, help="Batch size to use")
    parser.add_argument("--output-dir", type=Path, default=Path("."), help="Output directory for results")
    parser.add_argument("--mode", choices = ["SPMv2", "PSM"], required=True, help = "Mode to use") 

    args = parser.parse_args()

    name = args.model_path.name
    model = starcoder2.Model(args.model_path)

    # Load existing results if any
    result_path = args.output_dir / f"fim-results-{args.mode}-{name}.jsonl"
    if result_path.exists():
        with result_path.open("rt") as f:
            results = [ json.loads(line) for line in f ]
    else:
        results = []

    # Load the problems and skip those that we already have results.
    with Path("fill_in_the_middle/MultiPLE-fim.jsonl").open("rt") as f:
        problems = [ json.loads(line) for line in f ]
    problems = problems[len(results):]

    problems = list(chunked(problems, args.batch_size))


    with result_path.open("at") as f:
        for batch in tqdm(problems, unit="Batch", desc="FIM inference", total=len(problems)):
            pairs = [ (p["prompt"], p["suffix"]) for p in batch ]
            batch_results = model.fill_in_the_middle(pairs, 25, 0.2, mode = args.mode)
            for problem, result in zip(batch, batch_results):
                problem["result"] = result
                problem["model"] = name
                problem["exact_match"] = result.strip() == problem["canonical_solution"].strip()
                problem["fim_mode"] = args.mode
            for result in batch:
                f.write(json.dumps(result))
                f.write("\n")
                f.flush()

if __name__ == "__main__":
    main()



