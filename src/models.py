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

# TODO(arjun): Don't ignore n
def incoder_6b_temperature_002(_args, prompt, stop_tokens, n):
    from model_incoder import incoder_completion
    # NOTE(arjun): Singleton array needd while ignoring n
    return [incoder_completion(prompt=prompt, stop_tokens=stop_tokens)]

MODELS = {
    "code_davinci_001_temp_0.2": code_davinci_001_temperature_002,
    "incoder_6b_temp_0.2": incoder_6b_temperature_002
}
