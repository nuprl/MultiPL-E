from .bigcode_base import Model


revision = "d33d4e0"
model = Model("bigcode/christmas-models", revision=revision)
completions = model.completions
name = f"bigcode_1B_{revision}_stars"
fill_in_the_middle = model.fill_in_the_middle