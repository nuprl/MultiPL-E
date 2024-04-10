"""
This script produces completions for roughly any AutoModelForCausalLM.
"""
from typing import List
from multipl_e.completions import make_main, stop_at_stop_token, partial_arg_parser
from vllm import LLM, SamplingParams
import torch


class VLLM:
    def __init__(self, name, revision, tokenizer_name=None, tokenizer_revision=None, num_gpus=1):
        dtype = "float16"
        if torch.cuda.is_bf16_supported():
            dtype = "bfloat16"
        self.model = LLM(
            model=name,
            tokenizer=tokenizer_name,
            dtype=dtype,
            revision=revision,
            max_model_len=2048,
            tokenizer_revision=tokenizer_revision,
            trust_remote_code=True,
            tensor_parallel_size=num_gpus,
            gpu_memory_utilization=0.95,
        )

    def completions(
        self, prompts: List[str], max_tokens: int, temperature: float, top_p, stop
    ):
        prompts = [prompt.strip() for prompt in prompts]
        params = SamplingParams(temperature=temperature,
                                top_p=top_p, max_tokens=max_tokens, stop=stop)
        outputs = self.model.generate(prompts, params, use_tqdm=False)
        outputs = [o.outputs[0] for o in outputs]
        return [
            (
                stop_at_stop_token(o.text, stop),
                o.cumulative_logprob,
                o.token_ids,
            ) for o in outputs]


def automodel_partial_arg_parser():
    args = partial_arg_parser()
    args.add_argument("--name", type=str, required=True)
    args.add_argument("--revision", type=str)
    args.add_argument("--tokenizer_name", type=str)
    args.add_argument("--tokenizer_revision", type=str)
    args.add_argument("--name-override", type=str)
    args.add_argument("--num-gpus", type=int, default=1)
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
    model = VLLM(args.name, args.revision, args.tokenizer_name,
                 args.tokenizer_revision, args.num_gpus)
    name = do_name_override(args)
    make_main(args, name, model.completions)


if __name__ == "__main__":
    main()
