from multipl_e.util import gunzip_json
from pathlib import Path
import argparse
import json

def proc_result_file(resfile: Path, prompt_len):
    data = gunzip_json(resfile)
    stop_tokens = data["stop_tokens"]
    for res in data["results"]:
        if res["status"] == "OK":
            full_prog = res["program"]
            for stop in stop_tokens:
                end_index = full_prog.find(stop, prompt_len) 
                if end_index != -1:
                    return full_prog[:end_index+len(stop)]
    return None # no program found
        
def proc_path(respath: Path, complpath: Path, outfile: Path):
    with open(outfile, "w") as of:
        for results_path in respath.glob("*.results.json.gz"):
            completions_path = results_path.parent / (results_path.name.split(".", maxsplit=1)[0] + ".json.gz")
            if not completions_path.exists():
                continue

            results =  gunzip_json(results_path)
            completions = gunzip_json(completions_path)

            if results is None or completions is None:
                continue

            ok_result_indices = (i for i, item in enumerate(results["results"]) if item["status"] == "OK")
            try:
                ok_result_index = next(ok_result_indices)
            except StopIteration:
                continue

            ok_program = completions["prompt"].rstrip() + completions["completions"][ok_result_index]

            jsonstr = json.dumps({"content": ok_program, "path": str(results_path.absolute())})
            of.write(jsonstr + "\n")
    print(f"Done with {respath}")


if __name__ == "__main__":
    args = argparse.ArgumentParser()
    # add args for respath and outfile
    args.add_argument("--compldir", type=Path, help="Path to directory containing completion .json.gz files")
    args.add_argument("--resdir", type=Path, required=True, help="Path to directory containing .results.json.gz files")
    args.add_argument("--outfile", type=Path, required=True, help="Path to output .jsonl file")
    args = args.parse_args()

    if args.compldir is None:
        args.compldir = args.resdir

    if not args.resdir.is_dir():
        raise ValueError(f"{args.resdir} is not a directory")
    if not args.compldir.is_dir():
        raise ValueError(f"{args.compldir} is not a directory")
    Path.mkdir(args.outfile.parent, parents=True, exist_ok=True)
    proc_path(args.resdir, args.compldir, args.outfile)