from .bigcode_base import Model


revision = "83415b9"
model = Model("bigcode/christmas-models", revision=revision, supports_fim=False)
completions = model.completions
name = f"bigcode_1B_{revision}_nofim"
