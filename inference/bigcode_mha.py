from .bigcode_base import Model


revision = "3989eb0"
model = Model("bigcode/christmas-models", revision=revision, supports_fim=False)
completions = model.completions
name = f"bigcode_1B_{revision}_mha"
