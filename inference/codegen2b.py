from .local_huggingface_model import LocalHuggingfaceModel

_model = LocalHuggingfaceModel(
    "Salesforce/codegen-2B-multi", model_kwargs=dict(),
    set_pad_token_id_plus_2=True
)

name = "codegen2b"

completions = _model.completions
