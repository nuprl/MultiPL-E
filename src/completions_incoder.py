import torch
from transformers import AutoModelForCausalLM, AutoTokenizer
from libcompletions import parameterized_main
from torch.utils.tensorboard import SummaryWriter


model_name = "facebook/incoder-6B"

kwargs = dict(revision="float16", torch_dtype=torch.float16, low_cpu_mem_usage=True)

print("loading model")
model = AutoModelForCausalLM.from_pretrained(model_name, **kwargs)
print("loading tokenizer")
tokenizer = AutoTokenizer.from_pretrained(model_name)
print("loading complete")

model = model.half().cuda()

BOS = "<|endoftext|>"


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
            top_p=0.95,
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
    prompt: str, stop_tokens, max_to_generate: int, temperature: float, n, , writer: SummaryWriter
):
    """
    Do standard left-to-right completion of the prefix `input` by sampling from the model
    """
    output_tensors = completion_tensors(prompt, max_to_generate, temperature, n)
    return [
        stop_at_stop_token(decode_single_output(output_tensor, prompt), stop_tokens)
        for output_tensor in output_tensors
    ]


def main():
    parameterized_main(incoder_completion, 'incoder', max_to_generate=512)


if __name__ == "__main__":
    main()
