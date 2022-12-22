from .bigcode_base import Model


revision = "60a5975"
model = Model("bigcode/christmas-models", revision=revision)
completions = model.completions
name = "bigcode_1B_60a5975_fim"
fill_in_the_middle = model.fill_in_the_middle