from local_huggingface_model import LocalHuggingfaceModel

_model = LocalHuggingfaceModel(
    "Salesforce/codegen-16B-multi",
    dict(low_cpu_mem_usage=True))

completion = _model.completion