"""
Exports a single completion function for Incoder-6B, which is the largest Incoder model.
"""
from .local_huggingface_model import LocalHuggingfaceModel

_model = LocalHuggingfaceModel(
    "facebook/incoder-6B", model_kwargs=dict(), set_pad_token_id_plus_2=False
)

name = "incoder"

completions = _model.completions
