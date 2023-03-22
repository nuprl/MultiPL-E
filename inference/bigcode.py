"""

"""
# NOTE(arjun): I've removed fill_in_the_middle for now. But, copy it over from santacoder_base.py.

import torch
from typing import List, Tuple
from transformers import AutoTokenizer, AutoModelForCausalLM
import os
from .local_huggingface_model import _stop_at_stop_token

FIM_PREFIX = "<fim-prefix>"
FIM_MIDDLE = "<fim-middle>"
FIM_SUFFIX = "<fim-suffix>"
FIM_PAD = "<fim-pad>"
EOD = "<|endoftext|>"
SPEC_TOKS = [EOD, FIM_PREFIX, FIM_MIDDLE, FIM_SUFFIX, FIM_PAD]

def extract_fim_part(s: str):
    # Find the index of <fim-middle>
    start = s.find(FIM_MIDDLE) + len(FIM_MIDDLE)
    stop = s.find(EOD, start) or len(s)
    return s[start:stop]

class Model:
    def __init__(self, name, revision):
        self.model = AutoModelForCausalLM.from_pretrained(name, revision=revision, trust_remote_code=True)
        self.model = self.model.half().cuda()

        self.tokenizer = AutoTokenizer.from_pretrained(name, revision=revision, padding_side="left", trust_remote_code=True)
        self.tokenizer.pad_token = "<|endoftext|>"
        self.special_tokens = SPEC_TOKS
        
    def completion_tensors(
        self,
        prompt: str,
        max_length: int,
        temperature: float,
        n: int,
        top_p: float,
    ):
        """
        Produces n samples.
        """
        input_ids = self.tokenizer(prompt, return_tensors="pt").input_ids
        input_ids = input_ids.cuda()
        max_length = max_length + input_ids.flatten().size(0)
        attention_mask = torch.ones(input_ids.shape, dtype=torch.long, device="cuda")
        with torch.no_grad():
            output = self.model.generate(
                input_ids=input_ids,
                do_sample=True,
                top_p=top_p,
                temperature=temperature,
                num_return_sequences=n,
                max_length=max_length,
                attention_mask=attention_mask,
                pad_token_id=self.tokenizer.pad_token_id
            )
        return output

    def decode_single_output(self, output_tensor, prompt):
        detok_hypo_str = self.tokenizer.decode(
            output_tensor, clean_up_tokenization_spaces=False
        )
        # Skip the prompt (which may even have stop_tokens)
        return detok_hypo_str[len(prompt) :]

    def completions(
        self, prompt: str, max_tokens: int, temperature: float, n: int, top_p, stop
    ):
        prompt = prompt.strip()  # NOTE(arjun): Critical
        output_tensors = self.completion_tensors(
            prompt,
            max_tokens,
            temperature,
            n,
            top_p,
        )
        return [
            _stop_at_stop_token(self.decode_single_output(output_tensor, prompt), stop + self.special_tokens)
            for output_tensor in output_tensors
        ]



revision = os.environ.get("MODEL_REVISION")
if revision is None:
	print("MODEL_REVISION environment variable not set")
	exit(1)
model = Model("bigcode/scaling-laws-models", revision=revision)
completions = model.completions
name = f"bigcode_scalinglaws_{revision}"

