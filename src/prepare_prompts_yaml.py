"""
This script prepares all prompts for a particular language as YAML files (one
per benchmark). The scripts completions_*.py will then update each file with
completions from an LLM.

To run this script:

1. mkdir ../datasets/LANGUAGE-keep-MODEL

  where MODEL is either davinci or incoder.

2. python3 prepare_prompts_yaml.py --lang LANGUAGE --target-dir ../datasets/LANGUAGE-keep-MODEL --doctests keep

  This will create lots of YAML files in TARGET-DIR. You should commit these files to the repository.

3. Now run either completions_codex.py or completions_incoder.py.


Estimate of how big each YAML file gets:

- length of prompt + completion = 2048 tokens
- Each token is ~4 characters
- 200 samples per prompt
- (2048 * 4 * 200) / 1024 / 1024 = 1.5 MB of data.

This ignores the tests cases, but it should be compact enough.

"""

import argparse
import sys
from generic_translator import list_originals, translate_prompt_and_tests, get_stop_from_translator
from pathlib import Path
from humaneval_to_javascript import JavaScriptTranslator
from humaneval_to_ruby import RubyTranslator
from humaneval_to_lua import LuaTranslator
from humaneval_to_rust import RustTranslator
from humaneval_to_racket import RacketTranslator
from humaneval_to_php import PHPTranslator
from humaneval_to_cpp import CPPTranslator
from humaneval_to_python import PythonTranslator
from humaneval_to_julia import JuliaTranslator
from problem_yaml import Problem

TRANSLATORS = {
    "rb": RubyTranslator(),
    "lua": LuaTranslator(),
    "rust": RustTranslator("rs"),
    "rkt": RacketTranslator("racket"),
    "php": PHPTranslator("php"),
    "cpp": CPPTranslator("cpp"),
    "py": PythonTranslator(),
    "jl": JuliaTranslator("jl"),
    "js": JavaScriptTranslator()
}


def main():
    args = argparse.ArgumentParser()
    args.add_argument(
        "--lang", type=str, required=True, help="Language to translate to"
    )
    args.add_argument(
        "--target-dir", type=str, required=True, help="Directory to write YAML files to"
    )
    args.add_argument(
        "--doctests",
        type=str,
        default="keep",
        help="What to do with doctests: keep, remove, or transform",
    )

    args = args.parse_args()

    if args.lang not in TRANSLATORS:
        print(f"Unknown language: {args.lang}")
        sys.exit(1)

    if args.doctests not in ["keep", "remove", "transform"]:
        print(f"Unknown doctests option: {args.doctests}")
        sys.exit(1)

    target_dir = Path(args.target_dir)
    if not target_dir.exists():
        print(f"Target directory {target_dir} does not exist")
        sys.exit(1)

    translator = TRANSLATORS[args.lang]

    for original in list_originals().values():
        # original.name with .yaml extension
        original_name = original.name.split(".")[0]
        target_yaml_path = target_dir / (original_name + ".yaml")
        if target_yaml_path.exists():
            # print(f"Skipping {target_yaml_path}")
            continue

        result = translate_prompt_and_tests(
            original, translator, args.doctests
        )
        if result is None:
            continue

        (prompt, tests) = result
        problem_file = Problem()
        problem_file.name = original_name
        problem_file.language = args.lang
        problem_file.prompt = prompt
        problem_file.tests = tests
        problem_file.stop_tokens = get_stop_from_translator(translator)
        problem_file.completions = []
        output_text = Problem.dump(problem_file)
        with target_yaml_path.open("w") as f:
            f.write(output_text) # Avoid calling functions that may crash here


if __name__ == "__main__":
    main()
