import os
import tempfile
from safe_subprocess import run
from pathlib import Path
from generic_eval import main

LANG_NAME = "Kotlin"
LANG_EXT = ".kt"

#Following files have problems:
#137, 
#22: Any
#148: Elipsis

def eval_script(path: Path):

    with tempfile.TemporaryDirectory() as outdir:
        #Each Java file contains the class with same name `JAVA_CLASS_NAME`
        #Hence, javac will same JAVA_CLASS_NAME.class file for each problem
        #Write class for each problem to a different temp dir
        outpath = Path(outdir) / "out.jar"
        result = run(["kotlinc", path, "-include-runtime", "-d", outpath])
         
        if result.exit_code != 0:
            # Well, it's a compile error. May be a type error or
            # something. But, why break the set convention
            status = "SyntaxError"
        else:
            result = run(["java", "-ea", "-jar", f"{outpath}"])
            if result.timeout:
                status = "Timeout"
            elif result.exit_code == 0:
                status = "OK"
            else:
                status = "Exception"

    return {
        "status": status,
        "exit_code": result.exit_code,
        "stdout": result.stdout,
        "stderr": result.stderr,
    }

if __name__ == "__main__":
    main(eval_script, LANG_NAME, LANG_EXT)
