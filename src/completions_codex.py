"""
This script produces completions from Codex.

To run this script:

1. Prepare a directory with YAML files using prepare_prompts_yaml.py.

2. Create a file called model_keys.csv with the columns:

   Label,Key
   Arjun,OPENAI_API_KEY1
   Abhinav,OPENAI_API_KEY2
   ...

   Your OpenAI API key will only work if you are in the Codex beta.

Then run:

python3 completions_codex.py --dir <TARGET_DIR> --max-samples=32

The TARGET_DIR must be the same as the one used in prepare_prompts_yaml.py.

"""
import csv
from libcompletions import parameterized_main
import openai_multimodel_multikey
import asyncio



async def codex_completion(
    prompt: str, stop_tokens, max_to_generate: int, temperature: float, n: int
):
        response = await completions.completion(
            model="code-davinci-002",
            prompt=prompt,
            max_tokens=max_to_generate,
            temperature=temperature,
            n=n,
            top_p=0.95,
            stop=[ s for s in stop_tokens])
        return  response


async def main():
    global completions

    # Load the model keys from the CSV file.
    with open("model_keys.csv") as f:
        reader = csv.DictReader(f)
        model_keys = [row["Keys"] for row in reader]
    
    completions = openai_multimodel_multikey.MultiModelMultiKeyCompletion(model_keys)
    
    await parameterized_main(codex_completion, 'davinci', max_to_generate=512)


if __name__ == "__main__":
    asyncio.run(main())
