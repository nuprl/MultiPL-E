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
        for file in respath.glob("*.results.json.gz"):
            file_stem = file.stem.split(".")[0]
            complfile = complpath / Path(f"{file_stem}.json.gz")
            if not complfile.exists():
                raise ValueError(f"Completions file {complfile} does not exist")
            prompt_len = len(gunzip_json(complfile)["prompt"])
            program = proc_result_file(file, prompt_len)
            if program is None:
                continue
            jsonstr = json.dumps({"content": program, "path": str(file.absolute())})
            of.write(jsonstr + "\n")
    print(f"Done with {respath}")


if __name__ == "__main__":
    args = argparse.ArgumentParser()
    # add args for respath and outfile
    args.add_argument("--compldir", type=str, required=True, help="Path to directory containing completion .json.gz files")
    args.add_argument("--resdir", type=str, required=True, help="Path to directory containing .results.json.gz files")
    args.add_argument("--outfile", type=str, required=True, help="Path to output .jsonl file")
    args = args.parse_args()

    if not Path(args.resdir).is_dir():
        raise ValueError(f"{args.resdir} is not a directory")
    Path.mkdir(Path(args.outfile).parent, parents=True, exist_ok=True)
    proc_path(Path(args.resdir), Path(args.compldir), Path(args.outfile))