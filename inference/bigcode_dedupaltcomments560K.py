from .bigcode_base import Model


revision = "9304dee"
model = Model("bigcode/christmas-models", revision=revision)
completions = model.completions
name = f"bigcode_1B_{revision}_dedupaltcomments560K"
