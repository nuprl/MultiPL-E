# Written by Yangtian Zi, based on lua execution code written by Arjun Guha

# This script runs dlang-fied HumanEval programs in dlang 

import os
import subprocess
from pathlib import Path

def main():
    directory = Path(Path(__file__).parent, "..", "datasets", "d-keep-code_davinci_001_temp_0.2").resolve()

    for filename in os.listdir(directory):
        try:
            # Assumes exit-code 0 is all okay
            subprocess.check_output(["rdmd", "-unittest", os.path.join(directory, filename)],
                                        stderr=subprocess.STDOUT, timeout=5, encoding="utf-8")
            status = "OK"
        except subprocess.TimeoutExpired as exc:
            status = "Timeout"
        except subprocess.CalledProcessError as exc:
            # This is obviously not the right way to do this....
            if 'Error:' in (str(exc.output)):
                status = "SyntaxError"
            else:
                status = "Exception"
        except subprocess.FileNotFoundError as exc:
            raise exc

        filename = filename.split(".")[0]
        print(f"Dlang,{filename},{status}")

if __name__ == "__main__":
    main()
