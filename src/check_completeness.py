"""
For every combination of:
- Programming language (LANG)
- Model (MODEL)
- Temperature (TEMP)
- Docstring transformation (DOCSTRINGS)

For the problems ../experiments/<LANG>-<MODEL>-<TEMP>-<DOCSTRINGS>/*..yaml
that do not end in .results.yaml (i.e., the problem files):

1. It reports if any directory is missing
2. 1. It reports if the number of completions for any file is not 200.
"""
from pathlib import Path
from problem_yaml import Problem
from concurrent.futures import ThreadPoolExecutor

LANG = [ "rb", "lua", "rs", "rkt", "php", "cpp", "py", "jl", "js", "java" ]
MODEL = [ "incoder", "davinci" ]
TEMP = [ "0.2", "0.8" ]
DOCSTRINGS = [ "keep" ] #TODO(arjun): The remove results may be messed up

def check(lang, model, temp, docstrings):
    dir = Path("../experiments") / (lang + "-" + model + "-" + temp + "-" + docstrings)
    if not dir.exists():
        print(f"{dir} does not exist")
        return
    problems = [ p for p in dir.glob("*.yaml") if not p.name.endswith(".results.yaml") ]
    if len(problems) != 161:
        print(f"{dir} has {len(problems)} problems")
    
    for p in problems:
        with p.open() as f:
            problem = Problem.load(f)
            if len(problem.completions) != 200:
                print(f"{dir} has missing completions")
                return

def check_all():
    with ThreadPoolExecutor() as executor:
        for lang in LANG:
            for model in MODEL:
                for temp in TEMP:
                    for docstrings in DOCSTRINGS:
                        executor.submit(check, lang, model, temp, docstrings)

if __name__ == "__main__":
    check_all()