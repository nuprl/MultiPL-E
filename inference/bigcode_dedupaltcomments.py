from .bigcode_base import Model


revision = "080e3b87d19ace8aa4f72c30e5458cab820644dc"
model = Model("bigcode/christmas-models", revision=revision, full_precision=True)
completions = model.completions
name = f"bigcode_1B_{revision}_dedupaltcomments"
fill_in_the_middle = model.fill_in_the_middle