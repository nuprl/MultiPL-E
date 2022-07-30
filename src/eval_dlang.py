# Written by Yangtian Zi, based on lua execution code written by Arjun Guha

# This script runs dlang-fied HumanEval programs in dlang 

import os
import subprocess
from pathlib import Path

import sys
import re

DIR = "d-keep-code_davinci_001_temp_0.2"
ENABLE_SYNTAX_CHECK = False

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
        path = Path.joinpath(directory, filename)
        r = eval_script(path)
        status = r["status"]
        count[status] += 1

        if ENABLE_SYNTAX_CHECK and status == "SyntaxError":
            error_msgs = r["stderr"].split("\n")
            with open(path) as source_file:
                lines = source_file.readlines()
                unittest_line_start = lines.index("unittest\n")
                unittest_line_end = len(lines)
                for err_msg_line in error_msgs:
                    matched_parts = re.match(r"(\/?.*?\.[\w:]+\/.*.d)\(([0-9]+)\): Error: (.*)", err_msg_line[2:-1])
                    _file, line_num = matched_parts[1], int(matched_parts[2])
                    if unittest_line_start <= line_num and line_num <= unittest_line_end:
                        print("===============")
                        print(path, "contains error in unit test part")
                        print(error_msgs)
                        print("===============")

        filename = filename.split(".")[0]
        print(f"Dlang,{filename},{status}")

    print(DIR + ":" + str(count))

if __name__ == "__main__":
    main()
