# Authored by Arjun Guha, edited by John Gouwar
# Copyright (c) 2022, Roblox Inc.
#
# This script runs the Juliated HumanEval programs in datasets/julia
import os
import subprocess
from pathlib import Path

def main():
    directory = Path(Path(__file__).parent, "..", "datasets", "jl-keep-code_davinci_001_temp_0.2-0").resolve()

    for filename in os.listdir(directory):
        try:
            # Assumes exit-code 0 is all okay
            subprocess.check_output(" ".join(["julia", os.path.join(directory, filename)]),
                                        stderr=None, shell=True, timeout=20)
            
            
            
            status = "OK"
        except subprocess.TimeoutExpired as exc:
            status = "Timeout"
        except subprocess.CalledProcessError as exc:
            #print(str(exc.output))
            status = "Exception"
        filename = filename.split(".")[0]
        print(f"Julia,{filename},{status}")

if __name__ == "__main__":
    main()
