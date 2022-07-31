# Authored by Arjun Guha
# Copyright (c) 2022, Roblox Inc.
#
# This script runs the Luafied HumanEval programs in datasets/lua
import os
import subprocess
from pathlib import Path

"""
The purpose of this code is to compile and execute java files in a directory

structure of eval_cpp.py
1.) compile and build the script
- subprocess.run(["string to", "run", "in shell"], capture_outpu=bool_value)
- run() from subprocess is a function for running something in the shell

2.) check the return value from compiling the java file
- the previous subprocess run will return something other than 0 if error

3.) Execute/run the compiled/built script


However in java, you would need to create a class and then the main function
would be in the class (too much effort just to run the script)
*This is why you would use jshell instead to just run the script that was 
translated

"""

def eval_script(path: Path):
  # need to do ".".join even though the list of elements you are joining
  # only has 1 element. This is because you want the string result which join will return, not a list
  
def main():
    directory = Path(Path(__file__).parent, "..", "datasets", "java").resolve()
    binary_dir = os.path.join(directory, 'binary')
    if not os.path.exists(binary_dir):
      os.mkdir(binary_dir)
    for filename in sorted(os.listdir(directory)):
        if "151_double_the_difference" in filename or '103' in filename or \
        "_39_" in filename or "_125_" in filename or "_137_" in filename or \
        '_95_' in filename or '_22_' in filename or '_130_' in filename or '_133_' in filename or '_51_' in filename:
          continue
        
        if '.java' not in filename:
          #Do not compile a binary
          continue
        #TODO: All binaries should go in separate directory
        filepath = os.path.join(directory, filename)
        binary = os.path.join(binary_dir, filename.replace('.java',''))
        
        if os.path.basename(binary) in os.listdir(directory):
          continue
        command = " ".join(["javac", binary])
        print(command)
        # Assumes exit-code 0 is all okay
        (code, output) = subprocess.getstatusoutput(command)
        if code == 0:
          status = "OK"
        else:
          status = "SyntaxError"
          print(output)
          return
        # except subprocess.TimeoutExpired as exc:
        #     status = "Timeout"
        filename = filename.split(".")[0]
        print(f"Java,{filename},{status}")

if __name__ == "__main__":
    main()