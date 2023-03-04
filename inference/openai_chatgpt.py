import openai
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
            {"role": "system", "content":  "Please write the code that \
                finishes the body of the function prompt given by the user. Return only \
                the code of the body of the function without any markdown formatting or explanation."},
            {"role": "user", "content": prompt}
        ],
        temperature=temperature,
        top_p=top_p,
        n=n,
        max_tokens=max_tokens
    ), 25)
    # Wait a few seconds between requests
    sleep(1)
    # Pull out just the message content
    completion_messages = [completions_response.choices[i].message.content for i in range(len(completions_response.choices))]
    # pull out the code body
    return get_code_body(completion_messages)

def complete_or_fail_after_n_tries(func, n):
    if n == 0:
        raise Exception("Could not properly access chatgpt servers.")
    try:
        return func()
    except Exception:
        # Wait a few seconds between retries
        sleep(1)
        return complete_or_fail_after_n_tries(func, n-1)

def get_code_body(completion_messages):
    cleaned_messages = []
    for m in completion_messages:
        # Remove markdown
        m = m.strip("```")
        # Add four spaces at start of function and after every newline
        m = "    " + m
        m = m.replace("\n", "\n    ")
        cleaned_messages.append(m)
    return cleaned_messages