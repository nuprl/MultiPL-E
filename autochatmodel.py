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
import yaml

DEFAULT_TEMPLATE_PATH = Path(__file__).resolve(
).parent / "chat-templates" / "default.yaml"


def chat_template(interps: Dict[str, str] = {}, path=DEFAULT_TEMPLATE_PATH) -> List[Dict[str, str]]:
    with open(path, "r") as f:
        template: List[Dict[str, str]] = yaml.safe_load(f)

    assert isinstance(template, list), "Template must be a list of messages"
    assert all(
        isinstance(msg, dict) for msg in template), "Each message must be a dictionary"
    assert all(
        "role" in msg and "content" in msg for msg in template), "Each message must have a role and content"

    # interpolate the template with interps. every key in interps is a string.
    # interp in the yaml content appear as ${key}.
    def interpolate(content: str) -> str:
        for k, v in interps.items():
            content = content.replace(f"${{{k}}}", v)
        return content

    for msg in template:
        msg["content"] = interpolate(msg["content"])
        # check that no interpolation was missed
        assert "${" not in msg["content"], f"Missed interpolation in {msg['content']}"

    return template


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
        def logprobs_to_cumulative(logprobs):  # NOTE: normalized
            c = 0
            for l in logprobs:
                c += l
            return c / len(logprobs)

        batches = {}  # raw prompt -> (real prompt, number of comps)
        for i, convo in enumerate(convos):
            # yes, this is a terrible hack, but it works
            raw = "__RAW__\n".join([msg["content"] for msg in convo])
            if raw in batches:
                batches[raw][1] += 1
                batches[raw][2].append(i)
            else:
                batches[raw] = [convo, 1, [i]]

        batches = list(batches.values())
        outputs = [None] * len(convos)
        for convo, n, indexes in batches:
            response = self.client.chat.completions.create(
                model=self.name,
                messages=convo,  # type: ignore
                max_tokens=max_tokens,
                temperature=temperature,
                logprobs=True,
                n=n,
                top_p=top_p,
            )
            for choice, i in zip(response.choices, indexes):
                o = choice.message.content
                logprobs = choice.logprobs.content  # type: ignore
                assert o is not None, "OpenAI returned a null response"
                assert logprobs is not None, "OpenAI returned a null logprobs"
                logprobs = [l.logprob for l in logprobs]
                num_tokens = len(logprobs)
                proc = post_process(o)
                cumulative_logprob = logprobs_to_cumulative(logprobs)
                item = (proc, cumulative_logprob, num_tokens)
                outputs[i] = item

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

    def generate(self, convos: List[List[Dict[str, str]]], max_tokens: int, temperature: float, top_p: float, stop):
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
        outputs = [o.outputs[0] for o in outs]
        return [
            (
                post_process(o.text),
                o.cumulative_logprob,
                len(o.token_ids),
            ) for o in outputs]


class ChatModel:
    def __init__(self, name, engine="openai", template=DEFAULT_TEMPLATE_PATH, endpoint=None, num_gpus=1):
        self.template = template
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
        convo_prompts = [chat_template({"prompt": prompt}, path=self.template)
                         for prompt in prompts]
        outputs = self.engine.generate(
            convo_prompts, max_tokens, temperature, top_p, stop)

        return outputs


def openai_partial_arg_parser():
    args = partial_arg_parser()
    args.add_argument("--name", type=str, required=True)
    args.add_argument("--engine", type=str,
                      choices=["openai", "vllm"], default="openai")
    args.add_argument("--chat-template", type=str,
                      default=str(DEFAULT_TEMPLATE_PATH))
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
    model = ChatModel(args.name, args.engine,
                      args.chat_template, args.endpoint, args.num_gpus)
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
