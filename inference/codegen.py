from local_huggingface_model import LocalHuggingfaceModel

_model = LocalHuggingfaceModel(
    "Salesforce/codegen-16B-multi",
    dict(low_cpu_mem_usage=True),
    set_pad_token_id_plus_2=True,
)

completion = _model.completion
