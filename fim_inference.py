# I've hacked this to hardcode BigCode15B.
import json
from pathlib import Path
import argparse
from more_itertools import chunked
from tqdm import tqdm
import bigcode15b


def main():
    parser = argparse.ArgumentParser()
    # parser.add_argument("--model", type=str, required=True, help="Module name of the model to use")
    parser.add_argument("--batch-size", type=int, required=True, help="Batch size to use")
    parser.add_argument("--output-dir", type=Path, default=Path("."), help="Output directory for results")

    args = parser.parse_args()

    model = bigcode15b.Model(bigcode15b.CHECKPOINT_TO_REVISION["1000m"])
    name = "bigcode15b"

    # Load existing results if any
    result_path = args.output_dir / f"fim-results-{name}.jsonl"
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
            batch_results = model.fill_in_the_middle(pairs, 25, 0.2)
            for problem, result in zip(batch, batch_results):
                problem["result"] = result
                problem["model"] = name
                problem["exact_match"] = result.strip() == problem["canonical_solution"].strip()
            for result in batch:
                f.write(json.dumps(result))
                f.write("\n")
                f.flush()

if __name__ == "__main__":
    main()



