import openai
from openai.error import RateLimitError, APIConnectionError, Timeout
import random
import yaml
from time import sleep
import os
import json

name = "chatgpt"

system_role = 0
prompt_lead = 0

expt_out = f"experiment-{system_role}-{prompt_lead}.json"

system_roles = [
    "You are a programmer whose job it is to finish the functions provided by the user.", 
    "You're job is to write the functions asked of you by the user.",
    "you are a large language model whose job it is to complete code prompts, \
        determining the language to be written in based on the apparent language of the prompt.",
    "You are a language model whose job it is to produce the full function that fulfills the prompt."
]
prompt_leads = [
    "{}",
    "Please finish this function: {}" ,
    "Write the function for me that fulfills the prompt: {}",
    "Please write the entire function that matches {}"
]

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
            {"role": "system", "content":  system_roles[system_role]},
            {"role": "user", "content": prompt_leads[prompt_lead].format(prompt)}
        ],
        temperature=temperature,
        top_p=top_p,
        n=n,
        max_tokens=max_tokens
    ), config["max_retries"])
    # Pull out just the message content
    completion_messages = [choice.message.content for choice in completions_response.choices]
    if config["debug"]:
        print(completion_messages)
    # pull out the code body
    processed_response = get_code_body(completion_messages)
    # Save experiment data
    raw_data = {
        "system_prompt" : system_roles[system_role],
        "user_prompt" : prompt_leads[prompt_lead].format(prompt),
        "raw_response" : completion_messages,
        "processed_response" : processed_response
    }
    if os.path.exists(expt_out):
        with open(expt_out, "r+") as f:
            so_far = json.load(f)
    else:
        so_far = []
    so_far.append(raw_data)
    with open(expt_out, "wt") as f:
        json.dump(so_far, f)    
    return processed_response

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
            stop = m[start:].index("```") + start
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