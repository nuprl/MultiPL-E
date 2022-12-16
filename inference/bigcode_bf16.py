from .bigcode_base import Model


revision = "21002cd"
model = Model("bigcode/christmas-models", revision=revision, full_precision=True)
completions = model.completions
name = f"bigcode_1B_{revision}_bf16"
