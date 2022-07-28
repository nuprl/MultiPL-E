import torch
import tokenizers
from transformers import AutoModelForCausalLM, AutoTokenizer
import sys

model_name = "facebook/incoder-6B"

kwargs = dict(revision="float16", torch_dtype=torch.float16, low_cpu_mem_usage=True,)

print("loading model")
model = AutoModelForCausalLM.from_pretrained(model_name, **kwargs)
print("loading tokenizer")
tokenizer = AutoTokenizer.from_pretrained(model_name)
print("loading complete")

model = model.half().cuda()

BOS = "<|endoftext|>"

def incoder_completion(prompt: str, stop_tokens=[], max_to_generate: int=512, temperature: float=0.2):
    """
    Do standard left-to-right completion of the prefix `input` by sampling from the model
    """
    input_ids = tokenizer(prompt, return_tensors="pt").input_ids
    input_ids = input_ids.cuda()
    max_length = max_to_generate + input_ids.flatten().size(0)
    if max_length > 2048:
        print("warning: max_length {} is greater than the context window {}".format(max_length, 2048))
    with torch.no_grad():
        output = model.generate(input_ids=input_ids, do_sample=True, top_p=0.95, temperature=temperature, max_length=max_length)
    # pass clean_up_tokenization_spaces=False to avoid removing spaces before punctuation, e.g. "from ." -> "from."
    detok_hypo_str = tokenizer.decode(output.flatten(), clean_up_tokenization_spaces=False)
    
    if detok_hypo_str.startswith(BOS):
        detok_hypo_str = detok_hypo_str[len(BOS):]
    # Skip the prompt (which may even have stop_tokens)
    detok_hypo_str = detok_hypo_str[len(prompt):]
    for tok in stop_tokens:
        if tok in detok_hypo_str:
            detok_hypo_str = detok_hypo_str.split(tok)[0]
            break
    return detok_hypo_str
