# Authored by Arjun Guha, edited by John Gouwar
# Copyright (c) 2022, Roblox Inc.
#
# This script runs the Juliated HumanEval programs in datasets/julia
import os
import subprocess
from pathlib import Path

def eval_script(path: Path): 
    try:
        # Assumes exit-code 0 is all okay
        output  = subprocess.run(
            " ".join(["julia", str(path)]), shell=True, capture_output=True, timeout=20
        )
        
        
        if output.returncode == 0: 
            status = "OK"
        else: 
            status = "Exception"
    except subprocess.TimeoutExpired as exc:
        status = "Timeout"
    except: 
        print("Not sure how Julia got here")

    return { 
        "status" : status, 
        "exit_code": output.returncode,
        "stdout": str(output.stdout),
        "stderr": str(output.stderr),
    }


def main():
    directory = Path(Path(__file__).parent, "..", "datasets", "jl-keep-code_davinci_001_temp_0.2-0").resolve()

    for filename in os.listdir(directory):
        r = eval_script(Path.joinpath(directory, filename))
        filename = filename.split(".")[0]
        print(f"Julia,{filename},{r['status']}")

if __name__ == "__main__":
    main()
