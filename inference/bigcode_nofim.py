from .bigcode_base import Model


revision = "56ddb9e"
model = Model("bigcode/christmas-models", revision=revision)
completions = model.completions
name = f"bigcode_1B_{revision}_nofim"
