import torch
from transformers import AutoTokenizer, AutoModelForCausalLM

device = "cuda:0"
tokenizer = AutoTokenizer.from_pretrained("Salesforce/codegen-2B-mono")
print("Loaded tokenizer")
model = AutoModelForCausalLM.from_pretrained("Salesforce/codegen-2B-mono").to("cuda")
print("Loaded model")
#model = model.to(device)
text = "def hello_world():"
input_ids = tokenizer(text, return_tensors="pt").input_ids
print("Translated prompt")
input_ids = input_ids.to("cuda")
sample = model.generate(input_ids, max_length=128)
print(tokenizer.decode(sample[0], truncate_before_pattern=[r"\n\n^#", "^'''", "\n\n\n"]))
