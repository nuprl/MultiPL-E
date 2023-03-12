import openai
from openai.error import RateLimitError, APIConnectionError, Timeout
import random
import yaml
from time import sleep

name = "chatgpt"

# Set up the configuration file
with open("inference/chatgpt/config.yaml") as f:
    config = yaml.safe_load(f)
    openai.api_key = config["api_key"]
    openai.organization = config["organization_id"]

# Stop tokens remain unused as chatgpt has a different style of tokens than normally seen in other models.
def completions(prompt: str, max_tokens: int, temperature: float, n: int, top_p, stop):
    completions_response = complete_or_fail_after_n_tries(lambda: openai.ChatCompletion.create(
        model="gpt-3.5-turbo",
        messages=[
            # This tells the chatbot what role it is fulfilling.
            {"role": "system", "content":  "The user will give you a function prompt. Your job is to write the function and explain how it works."},
            {"role": "user", "content": "Please write a function that could fulfill this prompt " + prompt}
        ],
        temperature=temperature,
        top_p=top_p,
        n=n,
        max_tokens=max_tokens
    ), config["max_retries"])
    # Pull out just the message content
    completion_messages = [completions_response.choices[i].message.content for i in range(len(completions_response.choices))]
    if config["debug"]:
        print(completion_messages)
    # pull out the code body
    return get_code_body(completion_messages)

def complete_or_fail_after_n_tries(func, n):
    if n == 0:
        # Ran out of tries, return nothing
        if config["debug"]:
            print("Failed to get response from chatgpt API, max retries reached, leaving completions blank.")
        return []
    try:
        return func()
    except (RateLimitError, APIConnectionError, Timeout):
        # If can't connect, keep retrying, giving longer pauses between each retry
        seconds = 2 ** (config["max_retries"] - n) + random.random()
        if config["debug"]:
            print(f"Failed to get completions from chatgpt API, applying exponential backoff: {seconds}")
        sleep(seconds)
        return complete_or_fail_after_n_tries(func, n-1)

def get_code_body(completion_messages):
    cleaned_messages = []
    for m in completion_messages:
        # Get code section
        if m.count("```") == 2:
            # One code section
            start, stop = m.index("```") + 3, m.rindex("```")
        elif m.count("```") > 2:
            # Multiple code sections (select first)
            start = m.index("```") + 3
            stop = m[start:].index("```")
        else:
            # No code sections or one incomplete code section
            start, stop = 0, len(m)
        m = m[start:stop]
        # Add all lines with 4 tabs (should be function body)
        code_body = ""
        code_lines = m.split("\n")
        for line in code_lines:
            if line.startswith("    "):
                code_body += line + "\n"
        cleaned_messages.append(code_body)
    return cleaned_messages