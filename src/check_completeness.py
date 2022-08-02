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
import yaml
from concurrent.futures import ThreadPoolExecutor

LANG = [ "rb", "lua", "rs", "rkt", "php", "cpp", "py", "jl", "js", "java" ]
MODEL = [ "incoder", "davinci" ]
TEMP = [ "0.2", "0.8" ]
DOCSTRINGS = [ "keep", "remove" ]

def check(lang, model, temp, docstrings):
    dir = Path("../experiments") / (lang + "-" + model + "-" + temp + "-" + docstrings)
    if not dir.exists():
        print(f"{lang},{docstrings},{model},{temp}")
        return
    problems = [ p for p in dir.glob("*.yaml") if not p.name.endswith(".results.yaml") ]
    #if len(problems) != 161:
    #    print(f"{dir} has {len(problems)} problems")
    
    #TODO: this does not work for some reason?
    for p in problems:
        with p.open() as f:
            problem = yaml.load(p)
            if len(problem["completions"]) != 200:
                print(f"{dir} has missing completions")
                return

def check_all():
    with ThreadPoolExecutor() as executor:
        for model in MODEL:
            for lang in LANG:
                for temp in TEMP:
                    for docstrings in DOCSTRINGS:
                        executor.submit(check, lang, model, temp, docstrings)

if __name__ == "__main__":
    check_all()