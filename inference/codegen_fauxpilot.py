import requests

ROOT = "http://localhost:5000/v1/engines/codegen/completions"

name = "codegen"


def completions(prompt: str, max_tokens: int, temperature: float, n: int, top_p, stop):
    request_body = {
        "model": "codegen",
        "prompt": prompt,
        "max_tokens": max_tokens,
        "temperature": temperature,
        "n": n,
        "top_p": top_p,
        "stop": stop,
    }
    response = requests.post(ROOT, json=request_body)
    return [choice["text"] for choice in response.json()["choices"]]
