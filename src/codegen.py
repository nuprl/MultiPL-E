import torch
from transformers import AutoTokenizer, AutoModelForCausalLM

MODEL_NAME = "Salesforce/codegen-16B-multi"
MODEL_KWARGS = dict(low_cpu_mem_usage=True)

tokenizer = AutoTokenizer.from_pretrained(MODEL_NAME)
model = AutoModelForCausalLM.from_pretrained(MODEL_NAME, **MODEL_KWARGS).half().cuda()

BOS = "<|endoftext|>"

def completion_tensors(prompt: str, max_length: int, temperature: float, n: int):
    """
    Produces n samples.
    """
    input_ids = tokenizer(prompt, return_tensors="pt").input_ids
    input_ids = input_ids.cuda()
    max_length = max_length + input_ids.flatten().size(0)
    with torch.no_grad():
        output = model.generate(
            input_ids=input_ids,
            do_sample=True,
            top_p=0.95, # TODO(arjun): Do not hard code this.
            temperature=temperature,
            num_return_sequences=n,
            max_length=max_length,
            pad_token_id=tokenizer.eos_token_id + 2,
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


async def completion(model: str, prompt: str, max_tokens: int, temperature: float, n: int, top_p, stop):
    assert model == "codegen"
    output_tensors = completion_tensors(prompt, max_tokens, temperature, n)
    return [
        stop_at_stop_token(decode_single_output(output_tensor, prompt), stop)
        for output_tensor in output_tensors
    ]

