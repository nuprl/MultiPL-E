import torch
from transformers import AutoModelForCausalLM, AutoTokenizer
from problem_yaml import Problem
import argparse
import os
import sys
from pathlib import Path

model_name = "facebook/incoder-6B"

kwargs = dict(
    revision="float16",
    torch_dtype=torch.float16,
    low_cpu_mem_usage=True,
)

print("loading model")
model = AutoModelForCausalLM.from_pretrained(model_name, **kwargs)
print("loading tokenizer")
tokenizer = AutoTokenizer.from_pretrained(model_name)
print("loading complete")

model = model.half().cuda()

BOS = "<|endoftext|>"

def completion_tensors(prompt: str, max_length: int, temperature: float, n: int):
    """
    Produces n samples.
    """
    input_ids = tokenizer(prompt, return_tensors="pt").input_ids
    input_ids = input_ids.cuda()
    max_length = max_length + input_ids.flatten().size(0)
    if max_length > 2048:
        print(
            "warning: max_length {} is greater than the context window {}".format(
                max_length, 2048
            )
        )
    with torch.no_grad():
        output = model.generate(
            input_ids=input_ids,
            do_sample=True,
            top_p=0.95,
            temperature=temperature,
            num_return_sequences=n,
            max_length=max_length,
        )
    return output

def stop_at_stop_token(decoded_string, stop_tokens):
    min_stop_index = len(decoded_string)
    for stop_token in stop_tokens:
        stop_index = decoded_string.find(stop_token)
        if stop_index != -1 and stop_index < min_stop_index:
            min_stop_index = stop_index
    return decoded_string[:min_stop_index]

def decode_single_output(output_tensor, prompt):
    
    detok_hypo_str = tokenizer.decode(output_tensor, clean_up_tokenization_spaces=False)

    if detok_hypo_str.startswith(BOS):
        detok_hypo_str = detok_hypo_str[len(BOS) :]
    # Skip the prompt (which may even have stop_tokens)
    return detok_hypo_str[len(prompt) :]

def incoder_completion(
    prompt: str,
    stop_tokens=[],
    max_to_generate: int = 1024,
    temperature: float = 0.2,
    n=1,
):
    """
    Do standard left-to-right completion of the prefix `input` by sampling from the model
    """
    output_tensors = completion_tensors(prompt, max_to_generate, temperature, n)
    return [
        stop_at_stop_token(decode_single_output(output_tensor, prompt), stop_tokens)
        for output_tensor in output_tensors
    ]


def main():
    args = argparse.ArgumentParser()
    args.add_argument(
        "--dir", type=str, required=True, help="Directory with problem YAMLs"
    )
    args.add_argument("--max-samples", type=int, required=True,default=100)
    args = args.parse_args()

    dir = Path(args.dir)
    if not dir.exists():
        print("Directory does not exist: {}".format(dir))
        sys.exit(1)
    
    for problem_yaml_path in dir.glob("*.yaml"):
        with problem_yaml_path.open() as f:
            problem = Problem.load(f)
        num_completions_required = 200 - len(problem.completions)

        if num_completions_required < 1:
            print(f"Skipping {problem_yaml_path} because it already has enough completions")
            continue


        while num_completions_required > 0:
            num_samples = min(num_completions_required, args.max_samples)
            print(f"Generating {num_samples} completions for {problem_yaml_path}")
            completions = incoder_completion(
                prompt= problem.prompt,
                stop_tokens=problem.stop_tokens,
                max_to_generate=512,
                temperature=0.2,
                n=num_samples)
            problem.completions.extend(completions)
            with problem_yaml_path.open("w") as f:
                f.write(Problem.dump(problem))
            num_completions_required -= num_samples


if __name__ == "__main__":
    main()