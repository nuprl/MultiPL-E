"""
Do not use this file directly.
"""
import torch
from transformers import AutoTokenizer, AutoModelForCausalLM
from .local_huggingface_model import _stop_at_stop_token


class Model:
    def __init__(self, name, revision, full_precision=False):
        self.model = AutoModelForCausalLM.from_pretrained(name, revision=revision, trust_remote_code=True)
        if full_precision == False:
            self.model = self.model.half()
        self.model = self.model.cuda()
        self.tokenizer = AutoTokenizer.from_pretrained(name, revision=revision)

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
                pad_token_id=50256,  # TODO(arjun): Really? Must be a better way.
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
            _stop_at_stop_token(self.decode_single_output(output_tensor, prompt), stop)
            for output_tensor in output_tensors
        ]

