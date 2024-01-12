"""
This script produces completions for roughly any AutoModelForCausalLM.
"""
from multipl_e.completions import make_main, stop_at_stop_token, partial_arg_parser
import torch
from transformers import AutoModelForCausalLM, AutoTokenizer
import itertools
from typing import List


class Model:
    def __init__(self, name, revision, tokenizer_name=None, tokenizer_revision=None):
        dtype = torch.bfloat16 if torch.cuda.is_bf16_supported() else torch.float16
        self.model = AutoModelForCausalLM.from_pretrained(
            name, revision=revision, torch_dtype=dtype, trust_remote_code=True
        ).cuda()
        self.tokenizer = AutoTokenizer.from_pretrained(
            tokenizer_name or name,
            revision=tokenizer_revision or revision,
            padding_side="left",
            trust_remote_code=True,
        )
        if self.tokenizer.pad_token is None:
            self.tokenizer.pad_token = self.tokenizer.eos_token
        assert (
            self.tokenizer.pad_token is not None
        ), "tokenizer has neither pad_token nor eos_token"

    def completion_tensors(
        self,
        prompts: list,
        max_length: int,
        temperature: float,
        top_p: float,
    ):
        inputs = self.tokenizer(
            prompts, padding=True, return_tensors="pt", return_token_type_ids=False
        ).to("cuda")
        with torch.no_grad():
            output = self.model.generate(
                **inputs,
                do_sample=True,
                use_cache=True,
                top_p=top_p,
                temperature=temperature,
                max_length=max_length,
                pad_token_id=self.tokenizer.pad_token_id
            )
        return output

    def _remove_padding_and_stop_at_special_tokens(self, token_id_list: List[int]):
        pad_token_id = self.tokenizer.pad_token_id
        special_tokens = self.tokenizer.additional_special_tokens_ids
        # Removes all the pad tokens on the left-hand side using the pad token
        # ID. This is more robust than looking for the string representation of
        # the pad token. Thus the prompt can begin with the literal string
        # "<|endoftext|>" (which is a common representation of the pad token).
        left_padding_removed = itertools.dropwhile(
            lambda token_id: token_id == pad_token_id, token_id_list
        )
        # Returns all tokens to the left of the first special token. This has
        # the effect of removing all right-hand padding. Moreover, it also
        # stops generation at other special tokens. For example, consider
        # StarCoder 2, where a completion may reach the end of a file and then
        # continue onto a secønd file: A<file_sep>B. The code below removes
        # <file_sep>B and only produces A.
        right_specials_removed = itertools.takewhile(
            lambda token_id: token_id not in special_tokens, left_padding_removed
        )
        return list(right_specials_removed)

    def decode_single_output(self, output_tensor, prompt):
        output_token_ids = self._remove_padding_and_stop_at_special_tokens(
            output_tensor.tolist()
        )
        detok_hypo_str = self.tokenizer.decode(
            output_token_ids,
            clean_up_tokenization_spaces=False,
            skip_special_tokens=False,
        )
        # Skip the prompt (which may even have stop_tokens)
        return detok_hypo_str[len(prompt) :]

    def completions(
        self, prompts: str, max_tokens: int, temperature: float, top_p, stop
    ):
        prompts = [prompt.strip() for prompt in prompts]
        output_tensors = self.completion_tensors(
            prompts,
            max_tokens,
            temperature,
            top_p,
        )
        return [
            stop_at_stop_token(
                self.decode_single_output(output_tensor, prompt),
                stop,
            )
            for (prompt, output_tensor) in zip(prompts, output_tensors)
        ]


def automodel_partial_arg_parser():
    """
    This is also used by peftmodel.py.
    """
    args = partial_arg_parser()
    args.add_argument("--name", type=str, required=True)
    args.add_argument("--revision", type=str)
    args.add_argument("--tokenizer_name", type=str)
    args.add_argument("--tokenizer_revision", type=str)
    args.add_argument("--name-override", type=str)
    return args


def do_name_override(args):
    """
    Applies the --name-override flag, or uses the model name, correcting / and - which the rest of
    the toolchain does not like.
    """
    if args.name_override:
        name = args.name_override
    else:
        name = args.name.replace("/", "_").replace("-", "_")
    return name


def main():
    args = automodel_partial_arg_parser()
    args = args.parse_args()
    model = Model(
        args.name, args.revision, args.tokenizer_name, args.tokenizer_revision
    )
    name = do_name_override(args)
    make_main(args, name, model.completions)


if __name__ == "__main__":
    main()
