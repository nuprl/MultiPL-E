from .santacoder_base import Model


revision = "d3dab9c"
model = Model("arjunguha/santacoder-lua-nofim", revision=revision)
completions = model.completions
name = f"santacoder_lua_nofim_{revision}"
fill_in_the_middle = model.fill_in_the_middle
