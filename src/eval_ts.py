# Authored by Carolyn Anderson
import os
import subprocess
from pathlib import Path

def eval_script(path: Path):
    try: 
        # Assumes exit-code 0 is all okay
        # Run racket on the file, capturing stderr
        compiled = subprocess.run(["tsc", str(path)], capture_output=True, timeout=15)
        if compiled.returncode == 0:
            pass
        else:
            return {
            "status": "CompileError",
            "exit_code": compiled.returncode,
            "stdout": compiled.stdout,
            "stderr": compiled.stderr,
                }
        output = subprocess.run(["node", str(path).replace('.ts','.js')], cwd=path.parent, capture_output=True, timeout=15)
        
        if output.returncode == 0:
            status = "OK"
        else:
            outmessage = str(output)
            if 'ERR_ASSERTION' in outmessage:
                status = "AssertionError"
            elif 'SyntaxError' in outmessage:
                status = "SyntaxError"
            elif 'ReferenceError' in outmessage:
                status = "ReferenceError"
            else:
                status = "Exception"
        returncode = output.returncode
    except subprocess.TimeoutExpired as exc:
        status = "Timeout"
        output = exc
        returncode = -1
    except subprocess.CalledProcessError as exc:
        status = "Exception"
        returncode = exc.returncode
        output = exc
    return {
            "status": status,
            "exit_code": returncode,
            "stdout": output.stdout,
            "stderr": output.stderr,
                }



def main():
    directory = Path(Path(__file__).parent, "..", "datasets", "ts-keep-code_davinci_001_temp_0.2").resolve()

    for filename in os.listdir(directory):
        if ".ts" in filename:
            r = eval_script(Path.joinpath(directory,filename))
            filename = filename.split(".")[0]
            print(f"TypeScript,{filename},{r['status']}")

if __name__ == "__main__":
    main()
