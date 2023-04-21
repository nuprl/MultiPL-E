"""
This script generates completions from a CodeGeeX model server
that is running locally. It's not pretty, but it gets the job done.
"""

from typing import List, Tuple
from multipl_e.completions import partial_arg_parser, make_main, stop_at_stop_token
import requests
import json

# The keys are language tags from MultiPL-E. The values are tags from CodeGeeX:
#
# https://github.com/THUDM/CodeGeeX/blob/main/codegeex/data/data_utils.py#L7 
CODEGEEX_LANGS = {
    "py": "python",
    "java": "java",
    "js": "javascript",
    "go": "go",
    "php": "php",
    "rb": "ruby",
    "jl": "julia", # Unsupported
    "rs": "rust",
    "cs": "csharp",
    "ts": "typescript",
    "scala": "scala",
    "d": "D", # Unsupported
    "fs": "fsharp",
    "lua": "lua",
    "pl": "perl",
    "rkt": "racket", # Unsupported
    "sh": "shell",
    "swift": "swift",
    "r": "r"
}


# Example request:
# {
#     "prompt": "def factorial(",
#     "lang": "python",
#     "max_length": 512,
#     "temperature": 0.2,
#     "top_p": 0.95,
#     "n": 50
# }

def completions(
    prompt: str, max_tokens: int, temperature: float, n: int, top_p, stop
):
    global language
    response = requests.post(
        "http://localhost:5000/predict",
        json={
            "prompt": prompt,
            "lang": language,
            "max_length": max_tokens,
            "temperature": temperature,
            "top_p": top_p,
            "n": n
        },
    )
    results = response.json()
    stop.append("<|endoftext|>")
    return [
        stop_at_stop_token(r, stop) for r in results
    ]

def main():
    global language
    args = partial_arg_parser()
    args = args.parse_args()
    language = CODEGEEX_LANGS[args.lang] if args.lang in CODEGEEX_LANGS else "unknown"

    make_main(args, "codegeex", completions)

if __name__ == "__main__":
    main()
