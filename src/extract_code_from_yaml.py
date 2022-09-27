# TODO(arjun): update to process JSON
import argparse
from pathlib import Path
import problem_yaml 
import yaml

def write_results(lang: str, result_yaml_path: Path, write_path: Path):
    with open(result_yaml_path) as f:
        results = problem_yaml.TestResults.load(f)
    
    suffix_num = 0
    for result in results.results:
        if result.status != "OK":
            continue
        suffix = "".join(result_yaml_path.suffixes)
        write_file = \
            write_path / (result_yaml_path.name.replace(suffix,f"-{suffix_num}-{result.status}") + f".{lang}") 
        print(write_file)
        with open(write_file, "w") as f:
            f.write(result.program)
        
        suffix_num += 1
        
    
def main():
    args = argparse.ArgumentParser()

    args.add_argument(
        "--mode", type=str, help="The set of the experiments to select from, e.g. incoder-0.8-keep"
    )

    args.add_argument(
        "--lang", type=str, nargs="*", default=[], help="Specifiy the languages to choose, e.g. --lang py r"
    )

    args.add_argument(
        "--files",
        type=int,
        nargs="*",
        default=[],
        help="Specify the files to translate by their number, e.g. --files 0 1 2"
    )

    args.add_argument(
        "--out-path",
        type=str,
        help="Directory to output the file",
        default="../website-examples"
    )

    args = args.parse_args()

    dirs = [(lang, Path(Path(__file__).parent, "..", "experiments", f"{lang}-{args.mode}")) for lang in args.lang]

    
    out_path = Path(args.out_path)
    
    out_path.mkdir(mode=0o755, parents=True, exist_ok=True)

    print(dirs)
    print(out_path)

    for lang, dir in dirs:
        files = []
        for file in args.files:
            files.extend(list(dir.glob(f"*_{file}_*.results.yaml"))) 

        print(files)
        for file in files:
            write_results(lang, file, out_path)

if __name__ == "__main__":
    main()
