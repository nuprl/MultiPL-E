"""
This module exposes a code completion function that implements a subset of the
OpenAI completion interface (for Python). Under the hood, it can us
several keys to query Codex, or dispatch requests to other model servers
that follow the OpenAI HTTP API.
"""

from typing import List, Tuple
import time
from dataclasses import dataclass
import aiohttp
import asyncio
import functools
   

def now_string():
    return time.strftime("%m/%d %H:%M:%S", time.localtime())

def now():
    """
    The current time in seconds.
    """
    return int(time.time())


@dataclass
class OpenAIAPIKeyWithRates:
    key: str
    # List of (time, tokens_used) pairs
    requests: List[Tuple[int, int]]
    tokens_used = 0

    def update_tokens_used(self):
        """
        The number of tokens used with this API key over the last minute.
        """
        current_time = now()
        self.requests = [ (time, tokens) for (time, tokens) in self.requests if time + 60 >= current_time  ]
        self.tokens_used = sum(tokens for (time, tokens) in self.requests)

    def request(self, tokens_used):
        # print(f"Used {tokens_used} tokens on {self.key}")
        self.requests.append((now(), tokens_used))



class MultiModelMultiKeyCompletion:

    def __init__(self, openai_api_keys: List[str]):
        # An association list mapping API keys to a list of tuples 
        self.openai_api_keys = [ OpenAIAPIKeyWithRates(key, []) for key in openai_api_keys ]
        self.openai_api_keys_lock = asyncio.Lock()
        self.openai_api_keys_available = asyncio.Semaphore(len(openai_api_keys))
        self.client_session = aiohttp.ClientSession()

    async def get_least_used_key(self, estimated_usage: int) -> OpenAIAPIKeyWithRates:
        await self.openai_api_keys_available.acquire() # decrement semaphore, blocking at 0

        # Get the key on which we have used the fewest tokens.
        async with self.openai_api_keys_lock:
            for key in self.openai_api_keys:
                key.update_tokens_used()
            key = min(self.openai_api_keys, key = lambda key: key.tokens_used)
            self.openai_api_keys.remove(key)

        # Even though we have the key, let's self-rate limit if we think we will
        # be rate-limited by OpenAI.
        while key.tokens_used + estimated_usage > 150000:
            # print(f"Sleeping because key {key.key} has {key.tokens_used} tokens")
            await asyncio.sleep(1)
            key.update_tokens_used()
        # print(f"Using key {key.key} with {key.tokens_used} tokens used")
            
        return key

    async def release_key(self, key, usage):
        # Full body autocompleted by Codex.
        async with self.openai_api_keys_lock:
            self.openai_api_keys.append(key)
            key.request(usage)
            self.openai_api_keys_available.release()



    async def completion(self, model, prompt, max_tokens: int, temperature, n, top_p, stop):
        
        request_body = {
            "model": model,
            "prompt": prompt,
            "max_tokens": max_tokens,
            "temperature": temperature,
            "n": n,
            "top_p": top_p,
            "stop": stop
        }

        while True:
            key = await self.get_least_used_key(max_tokens * n)

            async with self.client_session.post(f"https://api.openai.com/v1/completions",
                json=request_body,
                headers={"Authorization": f"Bearer {key.key}"},
            ) as response:
                if response.status == 200:
                    response_json = await response.json()
                    await self.release_key(key, (response_json["usage"]["total_tokens"]))
                    return [choice["text"] for choice in response_json["choices"]]
                elif response.status == 429:
                    fudge = max(10000, 150000 - key.tokens_used)
                    print(f"{now_string()}Rate limited with {key.key}. Adding {fudge} tokens.")
                    await self.release_key(key, fudge) # # Guess
                else:
                    print(f"Error {response.status}. Sleeping for 5 seconds.")
                    print(await response.text())
                    await asyncio.sleep(5)