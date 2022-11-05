import torch
import deepspeed
from transformers import AutoTokenizer, AutoModelForCausalLM
from local_huggingface_model import _stop_at_stop_token

model = AutoModelForCausalLM.from_pretrained("moyix/codegen-16B-multi-gptj")
tokenizer = AutoTokenizer.from_pretrained("Salesforce/codegen-16B-multi")
ds_engine = deepspeed.init_inference(model, dtype=torch.half, checkpoint=None, replace_method='auto', replace_with_kernel_inject=True)
model = ds_engine.module

def completions(prompt: str, max_tokens: int, temperature: float, n: int, top_p: float, stop):
    """
    Produces n samples.
    """
    input_ids = tokenizer(prompt, return_tensors="pt").input_ids
    input_ids = input_ids.cuda()
    max_length = max_tokens + input_ids.flatten().size(0)
    with torch.no_grad():
        output = model.generate(
            input_ids=input_ids,
            do_sample=True,
            top_p=top_p,
            temperature=temperature,
            num_return_sequences=n,
            max_length=max_length,
            pad_token_id=tokenizer.eos_token_id + 2,
        )
    return [ _stop_at_stop_token(tokenizer.decode(tensor, clean_up_tokenization_spaces=True), stop) for tensor in output]
