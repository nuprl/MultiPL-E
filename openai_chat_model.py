"""
This script is used to generate completions via a OpenAI API. It can technically
be used with any OpenAI-API-compatible inference tool, like vLLM using the
web server.

Tested on: openai==1.12.0
"""
from typing import Dict, List
from multipl_e.completions import make_main, partial_arg_parser
import openai
import os


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
            outputs.append(response.choices[0].message.content)

        return [markdown_codeblock_extract(o) for o in outputs]


def openai_partial_arg_parser():
    args = partial_arg_parser()
    args.add_argument("--name", type=str, required=True)
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


if __name__ == "__main__":
    main()
