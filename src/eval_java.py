# Authored by Abhinav Jangda based on eval_cpp.py
# Copyright (c) 2022, Roblox Inc and University of Massachusetts Amherst
#
# This script runs the C++ Translated HumanEval programs in datasets/cpp-*
import os
import subprocess
from pathlib import Path

import os
import subprocess
import tempfile
from pathlib import Path
from generic_translator import main

LANG_NAME = "Java"
LANG_EXT = ".java"

#Following files have problems:
#137, 
#22: Any
#148: Elipsis

def eval_script(path: str):
    javatuples_path = os.path.join(os.getcwd(), "javatuples-1.2.jar")
    if type(path) is str and ".java" not in path:
        return
    elif ".java" not in path.name:
        return
    if not os.path.exists(javatuples_path):
        print("Downloading and extracting javatuples")
        #Download and unzip javatuples jar
        ret, _ = subprocess.getstatusoutput("wget http://www.java2s.com/Code/JarDownload/javatuples/javatuples-1.2.jar.zip")
        if ret != 0:
            printf("***Couldn't download javatuples***")
            return
        
        ret = subprocess.getstatusoutput("unzip javatuples-1.2.jar.zip")
        assert os.path.exists(javatuples_path), "Javatuples should exists"
    import time

    with tempfile.TemporaryDirectory() as outdir:
        #Each Java file contains the class with same name `JAVA_CLASS_NAME`
        #Hence, javac will same JAVA_CLASS_NAME.class file for each problem
        #Write class for each problem to a different temp dir
        #Use UTF8 encoding with javac
        build = subprocess.run(["javac", "-encoding", "UTF8", "-d", outdir, path], env={f"CLASSPATH" : f"{javatuples_path}"}, capture_output=True)
        status = None
        returncode = -1
        output = None
        exec_name = "Problem" #JAVA_CLASS_NAME
        if build.returncode != 0:
            # Well, it's a compile error. May be a type error or
            # something. But, why break the set convention
            status = "SyntaxError"
            returncode = build.returncode
            output = build
            print(output.stderr)
        else:
            try:
                # Assumes exit-code 0 is all okay
                output = subprocess.run(["java", "-ea", "-cp", f"{outdir}", exec_name], env={"CLASSPATH" : f"{javatuples_path}"}, capture_output=True, timeout=5)
                returncode = output.returncode
                if output.returncode == 0:
                    status = "OK"
                else:
                    # Well, it's a panic
                    status = "Exception"
            except subprocess.TimeoutExpired as exc:
                status = "Timeout"
                output = exc

        if output.stdout is not None:
            output.stdout = output.stdout.decode("utf-8")
        else:
            output.stdout = "None"

        if output.stderr is not None:
            output.stderr = output.stderr.decode("utf-8")
        else:
            output.stderr = "None"
        return {
            "status": status,
            "exit_code": returncode,
            "stdout": output.stdout,
            "stderr": output.stderr,
        }

if __name__ == "__main__":
    main(eval_script, LANG_NAME, LANG_EXT)
