"""
Run this script to call prepare_prompts_yaml.py for every experiment combination
in libexamples.
"""
import subprocess
import libexperiments

def doctests(variation):
    match variation:
        case "keep":
            return "keep"
        case "remove":
            return "remove"
        case "transform":
            return "transform"
        case "reworded":
            return "transform"

def originals(lang, variation):
    match variation:
        case "keep":
            return "../datasets/originals"
        case "remove":
            return "../datasets/originals-with-cleaned-doctests"
        case "transform":
            return "../datasets/originals-with-cleaned-doctests"
        case "reworded":
            return f"../datasets/originals-with-cleaned-vocab-{lang}"
    
def prepare(experiment: libexperiments.Experiment):
    d = doctests(experiment.variation)
    o = originals(experiment.lang, experiment.variation)
    cmd = f"python3 prepare_prompts_yaml.py --lang humaneval_to_{experiment.lang}.py --doctests {d} --originals {o} --target-dir {experiment.path()}"
    
    result = subprocess.run(cmd, shell=True,  encoding="utf-8")
    if  result.returncode != 0:
        exit(1)

if __name__ == "__main__":
    for experiment in libexperiments.all_experiments():
        prepare(experiment)