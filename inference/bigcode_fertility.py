from .bigcode_base import Model


revision = "ed725aa"
model = Model("bigcode/christmas-models", revision=revision)
completions = model.completions
name = f"bigcode_1B_{revision}_fertility"
fill_in_the_middle = model.fill_in_the_middle