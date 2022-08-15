from libeval import run_without_exn
from sys import exit
from pathlib import Path
from generic_eval import main as gmain

def eval_script(path: Path):
    return run_without_exn(["lua", str(path)])
    

if __name__ == "__main__":
    gmain(eval_script, 'Lua', '.lua')
