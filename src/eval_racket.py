# Authored by Arjun Guha
import os
import subprocess
from pathlib import Path
from libeval import run_without_exn
def eval_script(path: Path):
    output = run_without_exn(["racket", str(path)])
    # rackunit produces exit code 0 even if tests fail.
    if output["exit_code"] == 0 and len(output["stderr"]) > 0:
        if 'read-syntax' in output["stderr"]:
            output["status"] = "SyntaxError"
        else:
            output["status"] = "Exception"
    return output



def main():
    directory = Path(Path(__file__).parent, "..", "datasets", "racket-keep-code_davinci_001_temp_0.2").resolve()

    for filename in os.listdir(directory):
        r = eval_script(Path.joinpath(directory,filename))
        filename = filename.split(".")[0]
        print(f"Racket,{filename},{r['status']}")

if __name__ == "__main__":
    main()
