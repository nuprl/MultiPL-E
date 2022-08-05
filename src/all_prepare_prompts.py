from pathlib import Path
import subprocess

# Loop over experiments in this order.
TEMPS = [ "0.2", "0.8" ] # skip 0.8 for now
VARIATION = [ "reworded", "keep", "transform"  ]
LANGS = [ "py", "js", "ts", "java", "d", "cpp", "r", "rs", "jl", "sh", "cs", 
          "go", "lua", "pl", "php", "rb",  "scala", "swift", "rkt" ]
MODELS = [ "davinci", "incoder" ]




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
    
def prepare(lang, model, temp, variation):
    d = doctests(variation)
    o = originals(lang, variation)
    target = f"../experiments/{lang}-{model}-{temp}-{variation}"
    cmd = f"python3 prepare_prompts_yaml.py --lang humaneval_to_{lang}.py --doctests {d} --originals {o} --target-dir {target}"
    
    result = subprocess.run(cmd, shell=True, capture_output=True, encoding="utf-8")
    if len(result.stderr) > 0:
        print("###################### " + cmd)
        print(result.stderr[:1024])
        print(result.stdout[:1024])

if __name__ == "__main__":
    for temp in TEMPS:
      for lang in LANGS:
        for model in MODELS:
          for variation in VARIATION:
            if temp == "0.8" and variation != "reworded":  
              continue
            if variation == "remove":
              continue
            prepare(lang, model, temp, variation)
