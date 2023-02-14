from local_huggingface_model import LocalHuggingfaceModel

_model = LocalHuggingfaceModel(
    "./local_models/codegen_fs", model_kwargs={ 'trust_remote_code': True },
    set_pad_token_id_plus_2=True
)

name = "codegen_finetuned"

completions = _model.completions
