import datasets
import argparse
import json
from pathlib import Path
from transformers import AutoTokenizer, AutoModelForCausalLM

LANGS = [ "py", "js", "ts", "java", "d", "cpp", "r", "rs", "jl", "sh", "cs", 
          "go", "lua", "pl", "php", "rb",  "scala", "swift", "rkt" ]
ROOT_DATASET = [ "humaneval", "mbpp" ]

MODEL_NAME = "Salesforce/codegen-350M-multi"
MODEL_DIR_NAME = "codegen350multi"
tokenizer = AutoTokenizer.from_pretrained(MODEL_NAME)
model = AutoModelForCausalLM.from_pretrained(MODEL_NAME).half().cuda()

def stop_at_stop_token(decoded_string, problem):
    """
    Truncates the output at stop tokens, taking care to skip the prompt
    which may have stop tokens.
    """
    min_stop_index = len(decoded_string)
    for stop_token in problem["stop_tokens"]:
        stop_index = decoded_string.find(stop_token)
        if stop_index != -1 and stop_index > len(problem["prompt"]) and stop_index < min_stop_index:
            min_stop_index = stop_index
    return decoded_string[:min_stop_index]

args = argparse.ArgumentParser()
args.add_argument("--output-dir", type=str, required=True)
args = args.parse_args()

for lang in LANGS:
    for root_dataset in ROOT_DATASET:
        exp_dir = Path(args.output_dir) / f"{root_dataset}-{lang}-{MODEL_DIR_NAME}-0.2-reworded"
        exp_dir.mkdir(parents=True, exist_ok=True)
        problems = datasets.load_dataset("nuprl/MultiPL-E", f"{root_dataset}-{lang}")
        for problem in problems["test"]:
            problem_filename = exp_dir / f"{problem['name']}.json"
            if problem_filename.exists():
                continue                
            input_ids = tokenizer(
                problem["prompt"],
                return_tensors="pt",
            ).input_ids.cuda()
            generated_ids = model.generate(
                input_ids, max_length=512, pad_token_id=tokenizer.eos_token_id + 2,
                num_return_sequences=20,
                temperature=0.2,
            )
            completions = [ stop_at_stop_token(tokenizer.decode(s), problem) for s in generated_ids ]
            result_json = {
                "name": problem["name"],
                "language": problem["language"],
                "prompt": problem["prompt"],
                "tests": problem["tests"],
                "completions": completions,
                "stop_tokens": problem["stop_tokens"],
            }
            with open(problem_filename, "w") as f:
                json.dump(result_json, f)