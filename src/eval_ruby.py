# Authored by Arjun Guha, edited by Molly Q Feldman
# Copyright (c) 2022, Roblox Inc.
#
# Main goal: provide an eval_script implementation 
# This gets called by problem_evaluator.py for all generated code 

import subprocess
from pathlib import Path
from sys import argv

def eval_script(path: Path):
    try:
        # Capture output - will be generated regardless of success, fail, or syntax error
        output = subprocess.run(
            " ".join(["ruby", path]), shell=True, capture_output=True, timeout=5
        )

        if output.returncode == 0: # Assumes exit-code 0 is all okay
            status = "OK"
        else: #we have entered into a failure or a SyntaxError
            if len(output.stdout) > 2: #i.e. code ran, we have a Failure mode (Failure should be very very long) 
                status = "Exception"
            else: #we do not have a stdout, so we ran into a syntax error or file does not exist
                status = "SyntaxError"
        returncode = output.returncode
    except:
        print('Something very weird has happened in subprocess.run for Ruby, INVESTIGATE!')

    return {
        "status": status,
        "exit_code": returncode,
        "stdout": str(output.stdout),
        "stderr": str(output.stderr),
    }

def main():
    # this is for local evaluation purposes only 
    if len(argv) > 1: # a path has been provided
        localPath = argv[1]
        res = eval_script(localPath)
        print(res)
    else:
        print('Provide the full path to the file you would like to evaluate - must be .rb')

if __name__ == "__main__":
    main()
