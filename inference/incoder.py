"""
Exports a single completion function for Incoder-6B, which is the largest Incoder model.
"""
from .local_huggingface_model import LocalHuggingfaceModel
import torch

_model = LocalHuggingfaceModel(
    "facebook/incoder-6B", model_kwargs=dict(), set_pad_token_id_plus_2=False
)

_model._tokenizer.add_special_tokens({
    "pad_token": "<pad>"
})

name = "incoder"

completions = _model.completions


def strip_left_padding(output_tensor):
    """
    Since we are not using skip_special_tokens as described above, when batching results of varying length,
    the output will contain <|endoftext|> tokens on the left. This code strips those out.
    """
    start_index = 0
    while output_tensor[start_index].item() == _model._tokenizer.pad_token_id or output_tensor[start_index].item() == 2:
        start_index += 1
    return output_tensor[start_index:]

def extract_fim_part(s: str, prompt):
    start_index = len(prompt)
    stop_index = s.find("<|endofmask|>")
    if stop_index == -1:
        stop_index = len(s)
    return s[start_index:stop_index]

def fill_in_the_middle(prefix_suffix_tuples, max_tokens: int, temperature: float):
        
    prompts = [f"{prefix}<|mask:0|>{suffix}<|mask:1|><|mask:0|>" for prefix, suffix in prefix_suffix_tuples]
    # `return_token_type_ids=False` is essential, or we get nonsense output.
    inputs = _model._tokenizer(prompts, return_tensors="pt", padding=True, return_token_type_ids=False).to(0)
    max_length = inputs.input_ids[0].size(0) + max_tokens
    with torch.no_grad():
        outputs = _model._model.generate(
            **inputs,
            do_sample=True,
            top_p=0.95,
            temperature=temperature,
            max_length=max_length
        )
    # WARNING: cannot use skip_special_tokens, because it blows away the FIM special tokens.
    return [        
        extract_fim_part(_model._tokenizer.decode(strip_left_padding(tensor), clean_up_tokenization_spaces=False, skip_special_tokens=False), prompt) 
        for (tensor, prompt) in zip(outputs, prompts)
    ]