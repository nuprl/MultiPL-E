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
import sys
from concurrent.futures import ThreadPoolExecutor

#for the moment, accepting we might have rust and rs code 
LANG = [ "py", "sh","cs","cpp","d","go","java","js", "jl", "lua", "pl", "php", "r", "rkt", "rb", "rs","scala","swift","ts",]
MODEL = [ "incoder", "davinci" ]
TEMP = [ "0.2", "0.8" ]
DOCSTRINGS = [ "keep", "remove", "transform" ]
TERMS = [ "keep", "transform" ]

def check(lang, model, temp, docstrings,noisy):

    dir = Path("../experiments") / (lang + "-" + model + "-" + temp + "-" + docstrings)
    if not dir.exists():
        print(f"{lang},{docstrings},{model},{temp} does not exist")
        return

    all_problems = [ p for p in dir.glob("*.yaml")]
    problems = [p for p in all_problems if not p.name.endswith(".results.yaml") ]
    tested_problems = [p for p in all_problems if p.name.endswith(".results.yaml")]
    pcount = len(problems)
    tcount = len(tested_problems)
    
    for p in problems:
        try:
            problem = yaml.load(open(p), yaml.Loader)
            if len(problem['completions']) != 200:
                if noisy:
                    print(f"{problem['name']} in {dir} has only {len(problem['completions'])} completions")
                pcount -= 1
        except:
            pcount -= 1
            if noisy:
                print(f"Error in file {str(p)} in {dir}")

    for p in tested_problems:
        try:
            problem = yaml.load(open(p), yaml.Loader)
            if len(problem['results']) != 200:
                if noisy:
                    print(f"{problem['name']} in {dir} has only {len(problem['results'])} results")
                tcount -= 1
        except:
            pcount -= 1
            if noisy:
                print(f"Error in file {str(p)} in {dir}")

    print(f"{lang},{docstrings},{model},{temp}: has {pcount} fully generated problems.")
    print(f"{lang},{docstrings},{model},{temp}: has {tcount} fully tested results.")

def check_all():
    noisy = True if len(sys.argv) > 1 else False
    #with ThreadPoolExecutor() as executor:
    for lang in LANG:
        for model in MODEL:
            for temp in TEMP:
                for docstrings in DOCSTRINGS:
                    check(lang, model, temp, docstrings,noisy)
                    #executor.submit(check, lang, model, temp, docstrings)

if __name__ == "__main__":
    check_all()