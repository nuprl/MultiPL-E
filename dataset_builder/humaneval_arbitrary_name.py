# This script translates from detailed function and argument names to arbitrary ones for python human eval.
import re
import json
# Extracts function
func_regex = r"(?<=def )(.*)(?=\()"
# All args end with colon in python case
arg_regex = r"(?<=\()(.*?)(?=\:)|(?<=, )(.*?)(?=\:)"
# Defines where the comment begins which we shouldn"t touch
comment_starter = "\"\"\""
# Defines where the return type begins and shouldn't be touched
return_starter = "->"
# Defines where the start of a function call begins
function_starter =  "("
# Defines what ends each argument
arg_ending = ":"

def transform(data):
    """
      Transforms the names of the function and arguments in the prompt 
      and tests so that they are non descriptive. Changes in place

      Args:
        data: the json data that is fed to the model.
    """
    # Extract the function signature
    signature = data["prompt"][:data["prompt"].index(comment_starter)]
    declaration = signature[:signature.index(return_starter)]
    # Get function name and argument names
    func_name = re.findall(func_regex, declaration)[0]
    arg_names = re.findall(arg_regex, declaration)
    arg_names = [x or y for x, y in arg_names]
    # Replace function name everywhere with f
    data["prompt"] = data["prompt"].replace(func_name + function_starter, "f" + function_starter)
    data["tests"] = data["tests"].replace(func_name, "f")
    # Replace args everywhere with argn where n is a number
    for i in range(len(arg_names)):
        data["prompt"] = data["prompt"].replace(arg_names[i] + arg_ending, f"arg{i + 1}" + arg_ending)
    

def main():
    # Load the data
    with open("../prompts/humaneval-py-reworded.json", "r") as f:
        dataset = json.load(f)

    # Apply the transformation
    for data in dataset:
        transform(data)

    # Dump it out.
    with open("../prompts/humaneval-py-reworded-anonymized.json", "w") as f:
        json.dump(dataset, f, indent=2)


if __name__ == "__main__":
    main()