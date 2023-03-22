import openai
import yaml
import os
import json
from .openai_chatgpt import complete_or_fail_after_n_tries, get_code_body

name = "chatgpt"

# Set up the configuration file
with open("inference/chatgpt/experiments_config.yaml") as f:
    experiment_config = yaml.safe_load(f)
    expt_out = os.path.join(
        experiment_config["output_dir"],
        f'experiment-{experiment_config["language"]}-{experiment_config["system_role"]}-{experiment_config["prompt_num"]}.json'
    )

# Set up the configuration file
with open("inference/chatgpt/config.yaml") as f:
    config = yaml.safe_load(f)
    openai.api_key = config["api_key"]
    openai.organization = config["organization_id"]

# Stop tokens remain unused as chatgpt has a different style of tokens than normally seen in other models.
def completions(prompt: str, max_tokens: int, temperature: float, n: int, top_p, stop):
    completions_response = complete_or_fail_after_n_tries(lambda: openai.ChatCompletion.create(
        model=config["model"],
        messages=[
            # This tells the chatbot what role it is fulfilling.
            {"role": "system", "content":  experiment_config["system_roles"][experiment_config["system_role"]]},
            {"role": "user", "content": experiment_config["prompts"][experiment_config["prompt_num"]].format(prompt)}
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
        "system_prompt" : experiment_config["system_roles"][experiment_config["system_role"]],
        "user_prompt" : experiment_config["prompts"][experiment_config["prompt_num"]].format(prompt),
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
        json.dump(so_far, f, indent="\t")    
    return processed_response