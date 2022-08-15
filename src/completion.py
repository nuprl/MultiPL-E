import requests
from typing import List

def completion(
    port: int,
    engine: str,
    prompt: str,
    temperature: float = 1.0,
    max_tokens: int = 16,
    top_p: float = 1.0,
    stop: List[str] = [],
    presence_penalty: float = 0.0,
    frequency_penalty: float = 0.0,
    n: int = 1,
):
    body = {
        "prompt": prompt,
        "temperature": temperature,
        "max_tokens": max_tokens,
        "top_p": top_p,
        "stop": stop,
        "presence_penalty": presence_penalty,
        "frequency_penalty": frequency_penalty,
        "n": n,
    }
    resp = requests.post(f"http://localhost:{port}/completion/{engine}",
      headers={"Content-Type": "application/json"},
      json=body)
    return resp.json()