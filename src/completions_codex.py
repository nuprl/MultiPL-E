"""
This script produces completions from Codex.


To run this script, you have to first prepare a directory with YAML files
using prepare_prompts_yaml.py.

Then run:

export OPENAI_API_KEY=<your API key>
python3 completions_codex.py --dir <TARGET_DIR> --max-samples=32

The TARGET_DIR must be the same as the one used in prepare_prompts_yaml.py.
Your OpenAI API key will only work if you are in the Codex beta.
"""
from libcompletions import parameterized_main
import openai
import os
import time
from torch.utils.tensorboard import SummaryWriter
openai.api_key = os.getenv("OPENAI_API_KEY")


show_sleep_duration = True

def sleep_duration_seconds(max_to_generate, n):

    global show_sleep_duration
    toks_per_request = max_to_generate * n
    max_toks_per_min = 150000
    req_per_min = max_toks_per_min / toks_per_request
    secs_per_min = 60
    sleep_duration_seconds = secs_per_min / req_per_min + 1

    if show_sleep_duration:
        print(f"Will sleep for {sleep_duration_seconds} seconds per request.")
        show_sleep_duration = False

    return sleep_duration_seconds

def codex_completion(
    prompt: str, stop_tokens, max_to_generate: int, temperature: float, n: int,
    writer: SummaryWriter
):
    rate_limited = False
    while True:
        try:
            response = openai.Completion.create(
                model="code-davinci-002",
                prompt=prompt,
                max_tokens=max_to_generate,
                temperature=temperature,
                n=n,
                top_p=0.95,
                stop=[ s for s in stop_tokens])
            # Sleep for 5 seconds
            time.sleep(sleep_duration_seconds(max_to_generate, n))
            return  [choice.text for choice in response.choices]
        except openai.error.RateLimitError as e:
            if rate_limited:
                writer.add_text('Log', f"Rate-limited twice in a row. Exiting. Decrease n{n} by 2")
                n = min(1, n/2)
                writer.add_text('Log', f"New n {n}")
            writer.add_text('Log', "*** Rate limit error. Sleeping for 1 minute. ***")
            writer.add_text('Log', str(e))
            rate_limited = True
            time.sleep(60)

def main():
    parameterized_main(codex_completion, 'davinci', max_to_generate=512)


if __name__ == "__main__":
    main()
