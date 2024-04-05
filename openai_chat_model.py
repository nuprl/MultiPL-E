"""
This script is used to generate completions via a OpenAI API. It can technically
be used with any OpenAI-API-compatible inference tool, like vLLM using the
web server.

Tested on: openai==1.12.0
"""
from typing import Dict, List
from multipl_e.completions import make_main, partial_arg_parser
from multipl_e.util import gunzip_json, gzip_json
import os
from pathlib import Path
import json


def markdown_codeblock_extract(new: str) -> str:
    lines = new.split("\n")
    buf = ""
    in_codeblock = False
    for ln in lines:
        if ln.startswith("```"):
            if in_codeblock:
                break
            else:
                in_codeblock = True
        elif in_codeblock:
            buf += ln + "\n"
    return buf


def post_process(new: str) -> str:
    try:
        extracted = markdown_codeblock_extract(new)
    except Exception as e:
        print(f"Failed to extract codeblock from {new}: {e}")
        extracted = new
    return extracted.strip()


def make_convo_prompt(prompt: str) -> List[Dict[str, str]]:
    return [
        {
            "role": "system",
            "content": "You are a helpful programming assistant designed to complete code snippets"
        },
        {
            "role": "user",
            "content": f"""Please generate code to complete the following problem:
```
{prompt}
```"""
        },
    ]


class OpenAIEngine:
    def __init__(self, name, endpoint=None):
        import openai
        try:
            key = os.environ.get("OPENAI_API_KEY")
        except KeyError:
            raise KeyError(
                "Please set the OPENAI_API_KEY environment variable")
        self.client = openai.Client(api_key=key, base_url=endpoint)
        self.name = name

    def generate(self, convos: List[List[Dict[str, str]]], max_tokens: int, temperature: float, top_p: float, stop) -> List[str]:
        outputs = []
        for convo in convos:
            response = self.client.chat.completions.create(
                model=self.name,
                messages=convo,  # type: ignore
                max_tokens=max_tokens,
                temperature=temperature,
                top_p=top_p,
            )
            o = response.choices[0].message.content
            assert o is not None, "OpenAI returned a null response"
            outputs.append(post_process(o))

        return outputs


class VLLMEngine:
    def __init__(self, name, num_gpus=1):
        import torch
        from vllm import LLM
        dtype = "auto"
        if torch.cuda.is_bf16_supported():
            dtype = "bfloat16"

        self.model = LLM(name, dtype=dtype, tensor_parallel_size=num_gpus)
        self.tokenizer = self.model.get_tokenizer()

    def generate(self, convos: List[List[Dict[str, str]]], max_tokens: int, temperature: float, top_p: float, stop) -> List[str]:
        from vllm import SamplingParams
        formatted = []
        for convo in convos:
            formatted.append(self.tokenizer.apply_chat_template(
                convo, add_generation_prompt=True, tokenize=False))

        outs = self.model.generate(
            formatted,
            SamplingParams(
                top_p=top_p,
                temperature=temperature,
                max_tokens=max_tokens,
            ),
        )

        return [o.outputs[0].text for o in outs]


class ChatModel:
    def __init__(self, name, engine="openai", endpoint=None, num_gpus=1):
        if engine == "openai":
            self.engine = OpenAIEngine(name, endpoint)
        elif engine == "vllm":
            self.engine = VLLMEngine(name, num_gpus)
        else:
            raise ValueError(f"Unsupported engine: {engine}")

    def completions(
        self, prompts: List[str], max_tokens: int, temperature: float, top_p, stop
    ):
        # stop tokens are ignored due to instruct-based completion
        prompts = [prompt.strip() for prompt in prompts]
        #  params = SamplingParams(temperature=temperature,
        #  top_p=top_p, max_tokens=max_tokens, stop=stop)
        #  outputs = self.model.generate(prompts, params, use_tqdm=False)
        #  return [stop_at_stop_token(o.outputs[0].text, stop) for o in outputs]
        convo_prompts = [make_convo_prompt(prompt) for prompt in prompts]
        outputs = self.engine.generate(
            convo_prompts, max_tokens, temperature, top_p, stop)

        return outputs


def openai_partial_arg_parser():
    args = partial_arg_parser()
    args.add_argument("--name", type=str, required=True)
    args.add_argument("--engine", type=str, choices=["openai", "vllm"])
    args.add_argument("--num-gpus", type=int, default=1)
    args.add_argument("--name-override", type=str, default=None)
    args.add_argument("--endpoint", type=str, default=None)
    return args


def do_name_override(args):
    """
    Applies the - -name-override flag, or uses the model name, correcting / and - which the rest of
    the toolchain does not like.
    """
    if args.name_override:
        name = args.name_override
    else:
        name = args.name.replace("/", "_").replace("-", "_")
    return name


def main():
    args = openai_partial_arg_parser()
    args = args.parse_args()
    model = ChatModel(args.name, args.engine, args.endpoint, args.num_gpus)
    name = do_name_override(args)
    make_main(args, name, model.completions)
    # hotpatch the results to have empty "prompt" fields
    # super hacky, but it works
    path = Path(args.output_dir).glob("*.json.gz")
    for p in path:
        data = gunzip_json(p)
        assert data is not None, f"Failed to read {p}"
        data["prompt"] = ""
        gzip_json(p, data)


if __name__ == "__main__":
    main()
