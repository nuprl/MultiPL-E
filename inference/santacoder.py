from local_huggingface_model import LocalHuggingfaceModel

_model = LocalHuggingfaceModel(
        "inference/local_models/santacoder-fsharp-33/", model_kwargs={ 'trust_remote_code': True  },
    set_pad_token_id_plus_2=True,
)

name = "santacoder"

completions = _model.completions
