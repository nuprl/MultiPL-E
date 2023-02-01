from .santacoder_base import Model


revision = "6859f3e"
model = Model("mrm8488/santacoder-finetuned-the-stack-bash-4", revision=revision, full_precision=True)
completions = model.completions
name = f"santacoder_bash_{revision}"
fill_in_the_middle = model.fill_in_the_middle
