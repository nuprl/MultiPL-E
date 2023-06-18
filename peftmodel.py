from peft import PeftModel
from multipl_e.completions import make_main
from automodel import automodel_partial_arg_parser, do_name_override, Model

def main():
    # Add a new argument for the Peft model.
    args = automodel_partial_arg_parser()
    args.add_argument("--peft-model", type=str, required=True)
    args = args.parse_args()

    # Instantiate an AutoModel, but replace it with the PeftModel.
    model = Model(args.name, args.revision, args.tokenizer_name, args.tokenizer_revision)
    peft_model = PeftModel.from_pretrained(model.model, args.peft_model)
    model.model = peft_model

    name = do_name_override(args)
    make_main(args, name, model.completions)

if __name__ == "__main__":
    main()





