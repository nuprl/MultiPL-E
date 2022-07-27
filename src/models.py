from completion import completion

def code_davinci_001_temperature_002(args, prompt, stop_tokens, n):
 return completion(
        port=args.port,
        engine="code-davinci-001",
        # Settings from the Codex paper
        prompt=prompt,
        max_tokens=500,
        temperature=0.2,
        top_p=0.95,
        stop=stop_tokens,
        n=n,
    )

MODELS = {
    "code_davinci_001_temp_0.2": code_davinci_001_temperature_002
}
