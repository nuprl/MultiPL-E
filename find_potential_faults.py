from pathlib import Path
from multipl_e.util import gunzip_json
import argparse

def check_result_file(p: Path, delete: bool):
    data = gunzip_json(p)
    if data == None:
        print(f"Could not open {p}")
        if delete:
            p.unlink()
        return
    for result in data["results"]:
        if result["status"] != "Timeout" and result["status"] != "OK" and result["stdout"] == "" and result["stderr"] == "":
            print(f"Error but no output in {p}")
            if delete:
                p.unlink()
            return

def check_dir(dir_path: Path, delete: bool):
    for p in dir_path.glob("*.results.json.gz"):
        check_result_file(p, delete)

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("dirs", type=Path, nargs="+")
    parser.add_argument("--delete", action="store_true")
    args = parser.parse_args()
    for d in args.dirs:
        check_dir(d, args.delete)

if __name__ == "__main__":
    main()
