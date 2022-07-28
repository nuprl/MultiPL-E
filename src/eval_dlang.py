# Written by Yangtian Zi, based on lua execution code written by Arjun Guha

# This script runs dlang-fied HumanEval programs in dlang 

import os
import subprocess
from pathlib import Path

DIR = "d-keep-code_davinci_001_temp_0.2-0"

def eval_script(path: Path):
    try:
        # Assumes exit-code 0 is all okay
        output = subprocess.run(["rdmd", "-unittest", str(path)], capture_output=True,timeout=5)
        if output.returncode == 0:
            status = "OK"
        else:
            if 'Error:' in (str(output.stderr)):
                status = "SyntaxError"
            else:
                status = "Exception"
        returncode = output.returncode
    except subprocess.TimeoutExpired as exc:
        returncode = -1
        status = "Timeout"
        output = exc
    except subprocess.CalledProcessError as exc:
        returncode = exc.returncode
        if 'Error:' in (str(exc.stderr)):
            status = "SyntaxError"
        else:
            status = "Exception"
        output = exc

    return {
        "status": status,
        "exit_code": returncode,
        "stdout": str(output.stdout),
        "stderr": str(output.stderr),
    }

def main():
    directory = Path(Path(__file__).parent, "..", "datasets", DIR).resolve()

    count = {"OK": 0, "Timeout": 0, "Exception": 0, "SyntaxError": 0}
    for filename in os.listdir(directory):
        r = eval_script(Path.joinpath(directory, filename))
        status = r["status"]
        count[status] += 1
        filename = filename.split(".")[0]
        print(f"Dlang,{filename},{status}")

    print(DIR + ":" + str(count))

if __name__ == "__main__":
    main()
