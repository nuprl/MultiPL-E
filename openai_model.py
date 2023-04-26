"""
Use to get completions from an OpenAI completions endpoint. This version
of the script only works with Azure OpenAI service, since OpenAI no longer
hosts their code completion models. If you generalize the script to also
work on OpenAI hosted models, please submit a PR.
"""
from typing import List
from multipl_e.completions import partial_arg_parser, make_main
import requests
import json
import openai
import openai.error
import time
from typing import List

global engine


def completions(
    prompt: str, max_tokens: int, temperature: float, n: int, top_p, stop
) -> List[str]:
    while True:
        try:
            results = openai.Completion.create(
                engine=engine,
                prompt=prompt,
                temperature=temperature,
                max_tokens=max_tokens,
                top_p=top_p,
                n=n,
                stop=stop,
            )
            return [choice["text"] for choice in results["choices"]]
        except openai.error.RateLimitError:
            time.sleep(5)


def main():
    global engine
    args = partial_arg_parser()
    args.add_argument("--api-base", type=str, required=True)
    # WARNING: This is not secure in shared environments. An API key provided
    # on the command-line is visible to other users on the system. If you fix
    # this, please submit a PR.
    args.add_argument("--api-key", type=str, required=True)
    args.add_argument("--engine", type=str, required=True)
    args.add_argument("--name-override", type=str)
    args = args.parse_args()

    engine = args.engine
    openai.api_type = "azure"
    openai.api_base = args.api_base
    openai.api_version = "2022-12-01"
    openai.api_key = args.api_key
    if args.name_override:
        name = args.name_override
    else:
        name = args.engine

    make_main(args, name, completions)


if __name__ == "__main__":
    main()
