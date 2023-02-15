from .santacoder_base import Model


revision = "3391027f12a69168b11f9603902a3da21bf43075"
model = Model("esslushy/santacoder-fs", revision=revision)
completions = model.completions
name = f"santacoder_fs_{revision}"
fill_in_the_middle = model.fill_in_the_middle
