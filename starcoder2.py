import torch
from typing import List, Tuple
from transformers import AutoTokenizer, AutoModelForCausalLM
from multipl_e.completions import partial_arg_parser, make_main, stop_at_stop_token

FIM_PREFIX = "<fim_prefix>"
FIM_MIDDLE = "<fim_middle>"
FIM_SUFFIX = "<fim_suffix>"
FIM_PAD = "<fim_pad>"
EOD = "<|endoftext|>"
SPEC_TOKS = [EOD, FIM_PREFIX, FIM_MIDDLE, FIM_SUFFIX, FIM_PAD]

def _fim_format(prefix: str, suffix: str, mode: str) -> str:
    if mode == "PSM":
        return f"{FIM_PREFIX}{prefix}{FIM_SUFFIX}{suffix}{FIM_MIDDLE}"
    elif mode == "SPMv2":
        # StarCoder and StarCoder 2 use SPMv2 and _not_ SPM.
        return f"{FIM_PREFIX}{FIM_SUFFIX}{suffix}{FIM_MIDDLE}{prefix}"
    else:
        raise ValueError(f"Unknown mode {mode}")


class Model:
    def __init__(self, name):
        self.model = AutoModelForCausalLM.from_pretrained(name, trust_remote_code=True, torch_dtype=torch.float16)
        self.model = self.model.cuda()
        tokenizer = AutoTokenizer.from_pretrained(name, padding_side="left", trust_remote_code=True)
        self.tokenizer = tokenizer
        tokenizer.pad_token = "<|endoftext|>"
        self.special_tokens = SPEC_TOKS
        try:
            fim_middle_index = tokenizer.additional_special_tokens.index("<fim_middle>")
            self.fim_middle_token_id = tokenizer.additional_special_tokens_ids[fim_middle_index]
        except ValueError:
           print("Tokenizer does not have <fim_middle>. We are using 2.")
           self.fim_middle_token_id = 2
        


    def _fim_decode(self, mode: str, prefix: str, tensor) -> str:
        """
        Decodes an output tensor produced in FIM mode and returns just the middle
        text.
        """
        if mode not in [ "PSM", "SPMv2"]:
            raise ValueError(f"unsupported mode {mode}")
        fim_middle_index = torch.nonzero(tensor == self.fim_middle_token_id).view(-1)[0].item()
        tensor = tensor[fim_middle_index + 1:]
        # It should be safe to use skip_special_tokens here. We expect it to 
        # remove the <|endoftext|>s that mark the end of the middle.
        text = self.tokenizer.decode(tensor, skip_special_tokens=True)
        
        if mode == "SPMv2":
            text = text[len(prefix):]
        return text          

        
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

    def fill_in_the_middle(self, prefix_suffix_tuples: List[Tuple[str, str]], max_tokens: int, temperature: float, mode: str) -> List[str]:
        prompts = [ _fim_format(prefix, suffix, mode) for prefix, suffix in prefix_suffix_tuples ]
        result = self.tokenizer(prompts, return_tensors="pt", padding=True, return_attention_mask=True)
        input_ids = result.input_ids.cuda()
        attention_mask = result.attention_mask.cuda()
        max_length = input_ids[0].size(0) + max_tokens
        with torch.no_grad():
            output = self.model.generate(
                input_ids=input_ids,
                attention_mask=attention_mask,
                do_sample=True,
                temperature=temperature,
                top_p=0.95,
                max_length=max_length,
                pad_token_id=self.tokenizer.pad_token_id
            )
        return [        
            self._fim_decode(mode, prefix, tensor) for (tensor, (prefix, _)) in zip(output, prefix_suffix_tuples)
        ]
