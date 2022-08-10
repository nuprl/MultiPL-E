"""
Evaluates a generated Racket program (.rkt).
"""
import os
from pathlib import Path
from libeval import run_without_exn

def eval_script(path: Path):
    output = run_without_exn(["racket", str(path)])
    # rackunit produces exit code 0 even if tests fail.
    if len(output["stderr"]) > 0:
        if 'read-syntax' in output["stderr"]:
            output["status"] = "SyntaxError"
        else:
            output["status"] = "Exception"


    if "standard-module-name-resolver: collection not found\n  for module path: rackunit" in output["stderr"]:
        print(f"Failed to run evaluation for {path}: rackunit is not installed")
        return None

    return output



def main():
    directory = Path(Path(__file__).parent, "..", "datasets", "racket-keep-code_davinci_001_temp_0.2").resolve()

    for filename in os.listdir(directory):
        r = eval_script(Path.joinpath(directory,filename))
        filename = filename.split(".")[0]
        print(f"Racket,{filename},{r['status']}")

if __name__ == "__main__":
    main()
