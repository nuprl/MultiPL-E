from multipl_e.util import gunzip_json
from pathlib import Path
import argparse
import json
import sys

def proc_result_file(file: Path):
    data = gunzip_json(file)
    stop_tokens = data["stop_tokens"]
    for res in data["results"]:
        if res["status"] == "OK":
            full_prog = res["program"]
            for stop in stop_tokens:
                start_index = full_prog.find(stop)
                if start_index != -1:
                    return full_prog[:start_index+len(stop)]
    return None # no program found
        
def proc_path(path: Path, outfile: Path):
    with open(outfile, "w") as of:
        for file in path.glob("*.results.json.gz"):
            program = proc_result_file(file)
            if program is None:
                continue
            jsonstr = json.dumps({"content": program, "path": str(file.absolute())})
            of.write(jsonstr + "\n")
    print(f"Done with {path}")


if __name__ == "__main__":
    args = argparse.ArgumentParser()
    # add args for respath and outfile
    args.add_argument("--resdir", type=str, required=True, help="Path to directory containing .results.json.gz files")
    args.add_argument("--outfile", type=str, required=True, help="Path to output .jsonl file")
    args = args.parse_args()

    if not Path(args.resdir).is_dir():
        raise ValueError(f"{args.resdir} is not a directory")
    Path.mkdir(Path(args.outfile).parent, parents=True, exist_ok=True)
    proc_path(Path(args.resdir), Path(args.outfile))