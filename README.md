# Multi-Programming Language Evaluation of Large Language Models of Code (MultiPL-E)

MultiPL-E is a system for translating unit test-driven neural code generation
benchmarks to new languages. We have used MultiPL-E to translate two popular
Python benchmarks (HumanEval and MBPP) to 18 other programming languages.

For more information:

- MultiPL-E is part of the [BigCode Code Generation LM Harness]. This
  is the easiest way to use MultiPL-E.
- The [Multilingual Code Models Evaluation] by BigCode evaluates Code LLMs
  using several benchmarks, including MultiPL-E.
- We have a [tutorial] on how to use MultiPL-E directly.
- Read our paper [MultiPL-E: A Scalable and Polyglot Approach to Benchmarking Neural Code Generation].
- The [MultiPL-E dataset] of translated prompts is available on the Hugging Face
  Hub.

## Versions

- Version 3.0

  - We are going to maintain the changelog on the dataset page: https://huggingface.co/datasets/nuprl/MultiPL-E
  - The dataset was versioned at 3.0, and we are bumping the software version to stay in sync.
  - We have published several new PLs in the dataset. However, we have not included
    these PLs at this time: Dafny, Coq, Lean, Luau, and MATLAB.

- Version 0.5.0: Instruction-following support and new languages

  - New languages: Luau, Elixir, Lean, Coq, Dafny
  - Support for instruction-following prompts
  - vLLM support for faster evaluation

- Version 0.4.0: QoL improvements and new languages

  - New languages: OCaml, MATLAB
  - Using `.jsonl` instead of `.json` for prompts
  - Several bugfixes to prompts

- Version 0.3.0: used to evaluate [StarCoder]

  - This version corrects several bugs in prompts and test cases that resulted in lower
    pass@k rates for some of the statically typed languages. The most significant difference
    is that the pass@k for Java increases by about 2% on HumanEval.

- Version 0.2.0: used to evaluate [SantaCoder]

[tutorial]: https://nuprl.github.io/MultiPL-E/
[BigCode Code Generation LM Harness]: https://github.com/bigcode-project/bigcode-evaluation-harness
[MultiPL-E: A Scalable and Polyglot Approach to Benchmarking Neural Code Generation]: https://ieeexplore.ieee.org/abstract/document/10103177
[SantaCoder]: https://arxiv.org/abs/2301.03988
[MultiPL-E dataset]: https://huggingface.co/datasets/nuprl/MultiPL-E
[StarCoder]: https://arxiv.org/abs/2305.06161
[Multilingual Code Models Evaluation]: https://huggingface.co/spaces/bigcode/multilingual-code-evals
