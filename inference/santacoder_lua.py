from .santacoder_base import Model


revision = "e57b3c39fd29e36ba86970e49618448f5d3d5529"
model = Model("arjunguha/santacoder-lua", revision=revision)
completions = model.completions
name = f"santacoder_lua_{revision}"
fill_in_the_middle = model.fill_in_the_middle
