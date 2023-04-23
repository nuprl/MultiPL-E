# Multi-Programming Language Evaluation of Large Language Models of Code (MultiPL-E)

MultiPL-E is a system for translating unit test-driven neural code generation 
benchmarks to new languages. We have used MultiPL-E to translate two popular 
Python benchmarks (HumanEval and MBPP) to 18 other programming languages.

For more information:

- MultiPL-E is part of the [BigCode Code Generation LM Harness]. This
  is the easiest way to use MultiPL-E.
- We have a [tutorial] on how to use MultiPL-E directly.
- Read our paper [MultiPL-E: A Scalable and Polyglot Approach to Benchmarking Neural Code Generation].
- The [MultiPL-E dataset] of translated prompts is available on the Hugging Face
  Hub.

## Versions

- Version 0.3.0 (work in progress)

- Version 0.2.0: used to evaluate [SantaCoder]

[tutorial]: https://nuprl.github.io/MultiPL-E/
[BigCode Code Generation LM Harness]: https://github.com/bigcode-project/bigcode-evaluation-harness
[MultiPL-E: A Scalable and Polyglot Approach to Benchmarking Neural Code Generation]: https://ieeexplore.ieee.org/abstract/document/10103177
[SantaCoder]: https://arxiv.org/abs/2301.03988
[MultiPL-E dataset]: https://huggingface.co/datasets/nuprl/MultiPL-E