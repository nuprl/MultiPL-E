from argparse import ArgumentParser
import os
import yaml

# Lets you run 
def main():
    args = ArgumentParser()
    # Required experiment arguments
    args.add_argument("--num-system-roles", help="The number of system roles in the experimentation config.", required=True, type=int)
    args.add_argument("--num-prompts", help="The number of prompts in the experimentation config.", required=True, type=int)
    args.add_argument("--languages", help="The languages to test over", required=True, nargs="+")
    args.add_argument("--exp-dir", help="The directory storing the experiment results", required=True, type=str)
    # These defaults are good, but I will allow changes.
    args.add_argument("--completion-limit", help="How many completions to make per attempt", default=20, type=int)
    args.add_argument("--batch-size", help="How large each batch of completions from chatgpt is", default=20, type=int)
    args.add_argument("--root-dataset", help="The root dataset to pull from", default="humaneval", type=str)
    args.add_argument("--temperature", help="The temperature to run the model at.", default=0.8, type=float)
    args.add_argument("--input-limit", help="Number of samples to run experiment over", default=10, type=int)
    args = args.parse_args()

    # Make experiment file
    if not os.path.exists(args.exp_dir):
        os.mkdir(args.exp_dir)

    # Run experiments
    for lang in args.languages:
        for system_role in range(args.num_system_roles):
            for prompt in range(args.num_prompts):
                # Update experimentation file
                with open("inference/chatgpt/experiments_config.yaml") as f:
                    experiment_config = yaml.safe_load(f)
                    experiment_config["system_role"] = system_role
                    experiment_config["prompt_num"] = prompt
                    experiment_config["language"] = lang
                with open("inference/chatgpt/experiments_config.yaml", "wt") as f:
                    yaml.dump(experiment_config, f)
                # Run command
                os.system("python -m inference --completion-limit {completion_limit} --batch-size {batch_size} --root-dataset {root_dataset} \
                          --temperature {temp} --model-name inference.openai_chatgpt_experimentation --input-limit {input_limit} --lang {lang} \
                          --output-dir {output_path}"
                          .format(completion_limit=args.completion_limit, batch_size=args.batch_size, root_dataset=args.root_dataset, temp=args.temperature,
                                  input_limit=args.input_limit, lang=lang, system_role=system_role, prompt=prompt, 
                                  output_path=os.path.join(args.exp_dir, f"chatgpt-{lang}-{system_role}-{prompt}")))

if __name__ == "__main__":
    main()