from .bigcode_base import Model


revision = "40c1e65"
model = Model("bigcode/christmas-models", revision=revision)
completions = model.completions
name = f"bigcode_1B_{revision}_comments"
fill_in_the_middle = model.fill_in_the_middle