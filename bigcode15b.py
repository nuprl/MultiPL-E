"""
Do not use this file directly.
"""
import torch
from typing import List, Tuple
from transformers import AutoTokenizer, AutoModelForCausalLM
from multipl_e.completions import partial_arg_parser, make_main, stop_at_stop_token

FIM_PREFIX = "<fim_prefix>"
FIM_MIDDLE = "<fim_middle>"
FIM_SUFFIX = "<fim_suffix>"
FIM_PAD = "<fim-pad>"
EOD = "<|endoftext|>"
SPEC_TOKS = [EOD, FIM_PREFIX, FIM_MIDDLE, FIM_SUFFIX, FIM_PAD]

def extract_fim_part(s: str):
    # Find the index of <fim-middle>
    start = s.find(FIM_MIDDLE) + len(FIM_MIDDLE)
    stop = s.find(EOD, start) or len(s)
    return s[start:stop]

NAME = "bigcode/large-model"

class Model:
    def __init__(self, revision):
        self.model = AutoModelForCausalLM.from_pretrained(NAME, revision=revision, trust_remote_code=True)
        self.model = self.model.half().cuda()

        # In case the model creator did not upload a copy of the tokenizer.
        self.tokenizer = AutoTokenizer.from_pretrained(NAME, revision=revision, padding_side="left", trust_remote_code=True)
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
            stop_at_stop_token(self.decode_single_output(output_tensor, prompt), stop + self.special_tokens)
            for output_tensor in output_tensors
        ]

    def fill_in_the_middle(self, prefix_suffix_tuples: List[Tuple[str, str]], max_tokens: int, temperature: float) -> List[str]:
        prompts = [f"{FIM_PREFIX}{prefix}{FIM_SUFFIX}{suffix}{FIM_MIDDLE}" for prefix, suffix in prefix_suffix_tuples]
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
        # WARNING: cannot use skip_special_tokens, because it clobbers the fim special tokens
        return [        
            extract_fim_part(self.tokenizer.decode(tensor)) for tensor in output
        ]

CHECKPOINT_TO_REVISION = {
    "800m": "53e1e76",
    "600m": "25c10ec",
    "400m": "cf0b54a",
    "200m": "882e307"
}

def main():
    args = partial_arg_parser()
    args.add_argument("--checkpoint", type=str, required=True)
    args = args.parse_args()
    revision = CHECKPOINT_TO_REVISION[args.checkpoint]
    model = Model(revision)
    make_main(args, "bigcode_15b_" + args.checkpoint, model.completions)

if __name__ == "__main__":
    main()
