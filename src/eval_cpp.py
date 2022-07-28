# Authored by Abhinav Jangda
# Copyright (c) 2022, Roblox Inc and University of Massachusetts Amherst
#
# This script runs the C++ Translated HumanEval programs in datasets/cpp-*
import os
import subprocess
from pathlib import Path

def main():
    directory = Path(Path(__file__).parent, "..", "datasets", "cpp-keep-code_davinci_001_temp_0.2").resolve()
    binary_dir = os.path.join(directory, 'binary')
    if not os.path.exists(binary_dir):
      os.mkdir(binary_dir)
    
    total = 0
    passed = 0
    syntax_error = 0
    for filename in sorted(os.listdir(directory)):
        if "_137_" in filename or "_22_" in filename: 
          continue
        if "_39_" in filename: #Missing annotation
          continue
        if "_51_" in filename: #\n in string
          continue        
        if '.cpp' not in filename:
          #Only cpp files
          continue
        filepath = os.path.join(directory, filename)
        binary = os.path.join(binary_dir, filename.replace('.cpp',''))
        command = " ".join(["g++", filepath, "-o", binary])
        # Assumes exit-code 0 is all okay
        (code, output) = subprocess.getstatusoutput(command)
        if code == 0:
          status = "OK"
        else:
          status = "SyntaxError"
          # print(output)
          syntax_error += 1
        
        if status == "OK":
          #Execute the compiled binary
          command = binary
          (code, output) = subprocess.getstatusoutput(command)
          if code == 0:
            status = "OK"
            passed += 1
          else:
            status = "FAIL"
        total += 1
        filename = filename.split(".")[0]
        print(f"C++,{filename},{status}")
      
    print (f"Total {total}, Syntax Error {syntax_error}, Passed {passed}")

if __name__ == "__main__":
    main()
