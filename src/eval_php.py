# Main goal: provide an eval_script implementation 
# This gets called by problem_evaluator.py for all generated code 
#
# See generic_eval.py for instructions on how to run.

from pathlib import Path
import libeval

LANG_NAME = "PHP"
LANG_EXT = ".php"

def eval_script(path: Path):
    result = libeval.run_without_exn(["php", path])
    if "PHP Parse error" in result["stdout"]:
      result["status"] = "SyntaxError"
    return result

if __name__ == "__main__":
    libeval.testing_main(eval_script, LANG_NAME, LANG_EXT)
