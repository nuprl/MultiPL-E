# Authored by Arjun Guha, edited by Molly Q Feldman
# Copyright (c) 2022, Roblox Inc.
#
# This script runs the Luafied HumanEval programs in datasets/lua
import os
import subprocess
from pathlib import Path

def main():
    directory = Path(Path(__file__).parent, "..", "datasets", "rb").resolve()

    for filename in os.listdir(directory):
        try:
            # Assumes exit-code 0 is all okay
            subprocess.check_output(" ".join(["ruby", os.path.join(directory, filename)]),
                                        stderr=subprocess.DEVNULL, shell=True, timeout=5)
            
            
            
            status = "OK"
        except subprocess.TimeoutExpired as exc:
            status = "Timeout"
        except subprocess.CalledProcessError as exc:
            #print(str(exc.output))
            if "b''" == str(exc.output):
                status = 'SyntaxError'
            else: 
                status = "Exception"
        filename = filename.split(".")[0]
        print(f"Ruby,{filename},{status}")

if __name__ == "__main__":
    main()
