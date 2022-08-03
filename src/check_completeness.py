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

#for the moment, accepting we might have rust and rs code 
LANG = [ "rb", "lua", "rs", "rkt", "php", "cpp", "py", "jl", "js", "java"]
MODEL = [ "incoder", "davinci" ]
TEMP = [ "0.2", "0.8" ]
DOCSTRINGS = [ "keep", "remove" ]

def check(lang, model, temp, docstrings):

    dir = Path("../experiments") / (lang + "-" + model + "-" + temp + "-" + docstrings)
    if not dir.exists():
        print(f"{lang},{docstrings},{model},{temp}")
        return

    problems = [ p for p in dir.glob("*.yaml") if not p.name.endswith(".results.yaml") ]
    if len(problems) != 161:
        print(f"{dir} has {len(problems)} problems")
        #return
    
    #print(len(problems))
    for p in problems:
        problem = yaml.load(open(p), yaml.Loader)
        #print(problem['name'])
        # if problem['name'] == 'HumanEval_94_skjkasdkd':
        #     print(len(problem['completions']))
        if len(problem['completions']) != 200 and len(problem['completions']) > 0:
            print(f"{problem['name']} in {dir} has only {len(problem['completions'])} completions")
            #return

def check_all():
    #with ThreadPoolExecutor() as executor:
    for model in MODEL:
        for lang in LANG:
            for temp in TEMP:
                for docstrings in DOCSTRINGS:
                    check(lang, model, temp, docstrings)
                    #executor.submit(check, lang, model, temp, docstrings)

if __name__ == "__main__":
    check_all()