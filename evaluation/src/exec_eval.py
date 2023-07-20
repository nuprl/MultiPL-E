import argparse
import json
from containerized_eval import eval_string_script 

def cli():
    args = argparse.ArgumentParser()
    args.add_argument("--file", required=True, type=str, help="The file to evaluate")
    args.add_argument("--lang", required=True, type=str, help="The language of the file")
    return args

if __name__ == "__main__":
    args = cli().parse_args() 
    print(json.dumps(eval_string_script(args.file, args.lang)))
