from .santacoder_base import Model


revision = "47ad9f0"
model = Model("bigcode/santacoder", revision=revision, full_precision=True)
completions = model.completions
name = f"santacoder_{revision}"
fill_in_the_middle = model.fill_in_the_middle
