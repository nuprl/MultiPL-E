from .santacoder_base import Model


revision = "b7f0c02"
model = Model("arjunguha/santacoder-lua", revision=revision, full_precision=True)
completions = model.completions
name = f"santacoder_lua_3000steps"
fill_in_the_middle = model.fill_in_the_middle
