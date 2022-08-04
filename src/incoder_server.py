import torch
from transformers import AutoModelForCausalLM, AutoTokenizer
from libcompletions import parameterized_main
import http.server
import argparse
import json

BOS = "<|endoftext|>"

def init():
    global model
    global tokenizer
    print("Starting loading")
    model_name = "facebook/incoder-6B"
    kwargs = dict(revision="float16", torch_dtype=torch.float16, low_cpu_mem_usage=True)
    model = AutoModelForCausalLM.from_pretrained(model_name, **kwargs)
    tokenizer = AutoTokenizer.from_pretrained(model_name)
    print("loading complete")
    model = model.half().cuda()



def completion_tensors(prompt: str, max_length: int, temperature: float, n: int):
    """
    Produces n samples.
    """
    input_ids = tokenizer(prompt, return_tensors="pt").input_ids
    input_ids = input_ids.cuda()
    max_length = max_length + input_ids.flatten().size(0)
    if max_length > 2048:
        print(
            "warning: max_length {} is greater than the context window {}".format(
                max_length, 2048
            )
        )
    with torch.no_grad():
        output = model.generate(
            input_ids=input_ids,
            do_sample=True,
            top_p=0.95, # TODO(arjun): Do not hard code this.
            temperature=temperature,
            num_return_sequences=n,
            max_length=max_length,
        )
    return output


def stop_at_stop_token(decoded_string, stop_tokens):
    min_stop_index = len(decoded_string)
    for stop_token in stop_tokens:
        stop_index = decoded_string.find(stop_token)
        if stop_index != -1 and stop_index < min_stop_index:
            min_stop_index = stop_index
    return decoded_string[:min_stop_index]


def decode_single_output(output_tensor, prompt):

    detok_hypo_str = tokenizer.decode(output_tensor, clean_up_tokenization_spaces=False)

    if detok_hypo_str.startswith(BOS):
        detok_hypo_str = detok_hypo_str[len(BOS) :]
    # Skip the prompt (which may even have stop_tokens)
    return detok_hypo_str[len(prompt) :]


def incoder_completion(
    prompt: str, stop_tokens, max_to_generate: int, temperature: float, n: int
):
    """
    Do standard left-to-right completion of the prefix `input` by sampling from the model
    """
    output_tensors = completion_tensors(prompt, max_to_generate, temperature, n)
    return [
        stop_at_stop_token(decode_single_output(output_tensor, prompt), stop_tokens)
        for output_tensor in output_tensors
    ]

# A web server that received POST requests to /completions
class CompletionServer(http.server.BaseHTTPRequestHandler):
    def do_POST(self):
        # Parse the form data posted
        length = int(self.headers["Content-Length"])
        body = self.rfile.read(length).decode("utf-8")
        data = json.loads(body)
        if data["model"] != "incoder":
            self.send_error(400, "Invalid model")
            return
        prompt = data["prompt"]
        stop_tokens = data["stop_tokens"]
        max_to_generate = data["max_tokens"]
        temperature = data["temperature"]
        n = data["n"]
        output = incoder_completion(prompt, stop_tokens, max_to_generate, temperature, n)
        self.send_response(200)
        self.send_header("Content-type", "application/json")
        self.end_headers()
        self.wfile.write(json.dumps(output).encode("utf-8"))
        return

def main():
    args = argparse.ArgumentParser()
    args.add_argument("--port", type=int, default=8080)
    args.add_argument("--host", type=str, default="localhost")
    args = args.parse_args()
    init()
    server = http.server.HTTPServer((args.host, args.port), CompletionServer)
    server.serve_forever()

if __name__ == "__main__":
    main()
