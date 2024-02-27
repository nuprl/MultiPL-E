"""
This script is used to generate completions via a OpenAI API. It can technically
be used with any OpenAI-API-compatible inference tool, like vLLM using the
web server.

Tested on: openai==1.12.0
"""
from typing import Dict, List
from multipl_e.completions import make_main, partial_arg_parser
from multipl_e.util import gunzip_json, gzip_json
import openai
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
    extracted = markdown_codeblock_extract(new)
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


class OpenAIChat:
    def __init__(self, name, endpoint=None):
        try:
            key = os.environ.get("OPENAI_API_KEY")
        except KeyError:
            raise KeyError(
                "Please set the OPENAI_API_KEY environment variable")
        self.client = openai.Client(api_key=key, base_url=endpoint)
        self.name = name

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
        outputs = []
        for convo in convo_prompts:
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


def openai_partial_arg_parser():
    args = partial_arg_parser()
    args.add_argument("--name", type=str, required=True)
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
    model = OpenAIChat(args.name, args.endpoint)
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
