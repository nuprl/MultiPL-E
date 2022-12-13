from .bigcode_base import Model


revision = "577ea39"
model = Model("bigcode/christmas-models", revision=revision)
completions = model.completions
name = f"bigcode_1B_{revision}_dedupalt"
