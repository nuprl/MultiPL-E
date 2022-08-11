import os
import yaml
from yaml import CLoader

dir = "../experiments/ts-no-check-davinci-0.2-reworded/"

for name in os.listdir(dir):
    if not name.endswith(".results.yaml"):
        with open(dir+name, "r") as f:
            problem = yaml.load(f, Loader=CLoader)
        problem["prompt"] = "// @ts-nocheck\n\n" + problem["prompt"]
        with open(dir+name, "w") as f:
            yaml.dump(problem, f)
