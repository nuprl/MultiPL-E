# Multi-Programming Language Evaluation of Large Language Models of Code (MultiPL-E)

## Introduction

MultiPL-E is a system for translating unit test-driven neural code generation
benchmarks to new languages. We have used MultiPL-E to translate two popular
Python benchmarks (HumanEval and MBPP) to 18 other programming languages.

For more information:

- MultiPL-E is part of the [BigCode Code Generation LM Harness]. This
  is the easiest way to use MultiPL-E.
- The [Multilingual Code Models Evaluation] by BigCode evaluates Code LLMs
  using several benchmarks, including MultiPL-E.
- Read our paper [MultiPL-E: A Scalable and Polyglot Approach to Benchmarking Neural Code Generation].
- The [MultiPL-E dataset] of translated prompts is available on the Hugging Face
  Hub.

## Tutorial

These are instructions on how to use MultiPl-E directly, without the 
BigCode evaluation harness.

In this tutorial, we will run a small experiment to evaluate the performance of
[InCoder] on Rust with a small subset of the MBPP benchmarks. 
We will only fetch 20 completions per problem, so that you
can run it quickly on a single machine.  
You can also run on the full suite of benchmarks or substitute your own
benchmark programs. Later, we'll show you how to add support for other languages
and evaluate other models.

### Prerequisites

1. You will need Python 3.8 or higher.

2. You will need to install some Python packages:

    ```bash
    pip3 install aiohttp numpy tqdm pytest datasets torch transformers
    ```

3. You need to install one of [Podman] or [Docker].

3. Check out the repository:    

   ```bash
   git clone https://github.com/nuprl/MultiPL-E
   ```

4. Enter the repository directory:

   ```bash
   cd MultiPL-E
   ```

### Background

Out of the box, MultiPL-E supports several models, programming languages, 
and datasets.  Using MultiPL-E is a two step process:

1. We *generate* completions, which requires a GPU.

2. We *execute* the generated completions, which requires a machine that
   supports Docker or Podman.

### Generation

The following command will generate completions for the HumanEval benchmark,
which is originally in Python, but translated to Rust with MultiPL-E:

```
mkdir tutorial
python3 automodel.py \
    --name bigcode/gpt_bigcode-santacoder \
    --root-dataset humaneval \
    --lang rs \
    --temperature 0.2 \
    --batch-size 20 \
    --completion-limit 20 \
    --output-dir-prefix tutorial
```

The model name above refers to the
[SantaCoder](https://huggingface.co/bigcode/gpt_bigcode-santacoder) model on the
Hugging Face Hub. You can use any other text generation model instead.

Notes:

1. This command requires about 13 GB VRAM and takes 30 minutes with a Quadro RTX 
   6000.
2. If you have less VRAM, you can set `--batch-size` to a smaller value.
   E.g., with `--batch-size 10` it should work on consumer graphics cards,
   such as the RTX series cards.
3. If you're feeling impatient, you can kill the command early (use `Ctrl+C`)
   before all generations are complete. Your results won't be accurate,
   but you can move on to the evaluation step to get a partial result. Before
   proceeding, ensure that a few files have been generated:

   ```bash
   ls tutorial/*/*.json.gz
   ```

### Execution

You can run MultiPL-E's execution with or without a container, but we strongly
recommend using the container that we have provided. The container includes the
toolchains for all languages that we support. Without it, you will need to
painstakingly install them again. There is also a risk that the generated code
may do something that breaks your system. The container mitigates that risk.

#### Execution with a Container

When you first run evaluation, you need to pull and tag the [execution container](https://github.com/nuprl/MultiPL-E/pkgs/container/multipl-e-evaluation):


```bash
podman pull ghcr.io/nuprl/multipl-e-evaluation
podman tag ghcr.io/nuprl/multipl-e-evaluation multipl-e-eval
```

The following command will run execution on the generated completions:

```bash
podman run --rm --network none -v ./tutorial:/tutorial:rw multipl-e-eval --dir /tutorial --output-dir /tutorial --recursive
```

If execution is successful, you will see several `.results.json.gz` files
alongside the `.json.gz` files that were created during generation:

```
ls tutorial/*/*.results.json.gz
```

#### Execution without a Container

Assuming you have setup the needed language toolchains, here is how you
do executions without a container:

```bash
cd evaluation/src
python3 main.py --dir ../../tutorial --output-dir ../../tutorial --recursive
```

If execution is successful, you will see several `.results.json.gz` files
alongside the `.json.gz` files that were created during generation:

```bash
ls ../../tutorial/*/*.results.json.gz
```

### Analyzing Results

Finally, you can calculate the pass rates:

```
python3 pass_k.py ./tutorial/*
```

The experiment prints pass rates for k=1 as we only made 20 results at a
temperature of 0.2. If you want to see pass@10 and pass@100 pass rates, use
`--temperature 0.8` and when you generate completions and *remove the
`--completion-limit 20` flag*.

**Warning:** In generation, we used `--completion-limit 20` to only generate
20 samples for each prompt. You can remove this flag to generate 200 samples,
which is typical, but can take 10 times longer. We have found that 20 samples
is adequate for estimate pass@1. However, you need more samples to estimate
pass@10 and pass@100.

## Adding Support for a New Programming Language

If you want to learn by example, you can look at pull requests that have added
support for several languages:

- [Ada](https://github.com/nuprl/MultiPL-E/pull/162)
- [Dart](https://github.com/nuprl/MultiPL-E/pull/153)
- [Clojure](https://github.com/nuprl/MultiPL-E/pull/136)
- [Elixir](https://github.com/nuprl/MultiPL-E/pull/117)

In general, you need to make four changes to support language *L*:

1. Write an execution script to run and test *L* language that goes in
   [evaluation/src](https://github.com/nuprl/MultiPL-E/tree/main/evaluation/src).

2. Write a translator to translate benchmarks to *L* that new language that goes
   in [dataset_builder](https://github.com/nuprl/MultiPL-E/tree/main/dataset_builder).

3. Add terms for *L* to `dataset_builder/terms.csv` to translate comments.

### Writing the Translator

Let's say we had not included Perl in the set of benchmark languages and 
you want to add it. In a new file `humaneval_to_perl.py` you will need to 
define a class called `Translator`. `Translator` contains numerous methods -
the interface for a generic `Translator` class is provided in `base_language_translator.py `. 

*Note*: You must name your translator `humaneval_to_L.py`. However, the code
works with several other benchmarks, including MBPP.

There are three types of methods for `Translator`: (1) methods that handle 
translating the prompt, (2) methods that handle translating the unit tests, and
(3) methods that handle the value-to-value translation. 

First, let's handle converting the Python prompt to a Perl prompt. This is 
done by the `translate_prompt` method. `translate_prompt` needs to return 
a string (we definitely suggest using a formatted Python string here) that 
contains the Perl prompt and then the Perl function signature. We suggest 
accumulating the prompt into one string as follows: 
```
perl_description = "# " + re.sub(DOCSTRING_LINESTART_RE, "\n# ", description.strip()) + "\n"
```
where `"#"` are Perl single-line comments. `DOCSTRING_LINESTART_RE` identifies the 
first line in the prompt using a regex and then `description` is a string representing 
the rest of the prompt. This process should be pretty simple - just connect them together with 
your comment structure of choice.

The argument `name` to `translate_prompt` takes care of the function name, you 
just need to format the function arguments (argument `args`) and delimiters to complete 
the prompt translation.

Now let's consider the three methods which help translate unit tests:
`test_suite_prefix_lines`, `test_suite_suffix_lines`, and `deep_equality`. 
The prefix and suffix methods return a "wrapper" around the set of generated unit 
tests. In most languages, as is the case in Perl, the prefix defines a function/class 
for testing and the suffix calls that function. This may include calls to your testing library 
of choice (please look at existing `humaneval_to` files for examples!). 
The wrapper in Perl we use is:
```
sub testhumaneval {
   my $candidate = entry_point;
   # Tests go here
}
testhumaneval();
```

Note the argument `entry_point` to `test_suite_prefix_lines`: this is the name 
of the function for each benchmark. In most languages, we either assign that to 
a variable `candidate` (as done in the original HumanEval benchmark) or call 
`entry_point` directly. 

The final unit test function is `deep_equality`, which is where you define how 
to check whether two arguments (`left` and `right`) are structurally equal. In Perl
we do this with `eq_deeply`. (Hint: note that sometimes the order of `left` and 
`right` can be switched in some testing frameworks - try this out to produce 
the best error messages possible!).

Third, let's tackle the value-to-value translation methods. All of them take
a Python value (or some representation of one) as an argument and return a string 
representing that value's equivalent in Perl.

For instance, `gen_dict` defines what dictionaries in Python should map to in
Perl. Our implementation is below; the only work we need to do is use of `=>` i
nstead of `:` to differentiate keys and values in Perl.

```
 def gen_dict(self, keys: List[str], values: List[str]) -> str:
        return "{" + ", ".join(f"{k} => {v}" for k, v in zip(keys, values)) + "}"
```

This step should be quite straightforward for each value and its associated 
method. When there is choice, we used our language knowledge or consulted 
the style guides from the language communities (see our paper's Appendix). As we 
mention in our paper, the ease of value-to-value mapping is one of the key aspects of 
this approach. 

There are also smaller elements to `Translator` (stop tokens, file_ext, etc.)
that you will need to populate accordingly. 

If you've successfully gotten to this point: great, you're done and can move 
on to `eval_foo` and testing. If you wanted to add a statically typed 
benchmark - Read on!

#### What about statically typed languages?

Statically typed translations are notably more challenging to implement than the 
Perl example above. Rather than walk you through the steps directly, we provide a 
well-documented version of `humaneval_to_ts.py` for TypeScript as an example. Feel free
to also consult translations for other languages in the benchmark, although your 
mileage may vary. 

### Writing the Execution Script

Now that you're done converting Python to your language of choice, you need 
to define how to evaluate the generated programs. As a reminder, one of the 
contributions of this benchmark suite is actually evaluating the generated
code. Let's continue with the idea that you are adding Perl as a new language to our dataset.

In `eval_L.py` you should define a function, `eval_script`, with the 
following signature and imports:
```
from pathlib import Path
from safe_subprocess import run

def eval_script(path: Path):
```

In the body of `eval_script` you should call `run` with the 
requisite arguments (please refer to it's documentation and your computing architecture
to do this correctly). For our results, we use the following call to `run` for Perl:
```
r = run(["perl", path])
```

You should then determine how to handle what gets assigned to `r`. If you 
look around the eval scripts we provide, there are different granularities for
handling program evaluation. For instance some statically typed errors
handle compilation and runtime errors differently. We recommend, at minimum,
handling success (typically exit code 0), timeouts, syntax errors, 
and exceptions as four subclasses of results. You can do this using 
`try-except` statements or simply with conditionals:

```
   if r.timeout:
        status = "Timeout"
   ... handle other errors ...
    else:
        status = "OK"
```

`eval_script` should return a dictionary of the form below - the scripts above 
rely on this output format to calculate pass@k metrics:

```
return {
        "status": status,
        "exit_code": r.exit_code,
        "stdout": r.stdout,
        "stderr": r.stderr,
      }
```

The final two steps are:

1. A reference to your evaluator in the file `./evaluation/src/containerized_eval.py`.

2. Create a Dockerfile for your language in the `evaluation` directory.

There is one final step if you want to run the completion
tutorial above for your brand new language. Open `containerized_eval.py` and 
add links to your new language in two places:

### Writing the Terms to Translate Comments

Add a row for $L$ to `dataset_builder/terms.csv`, which instructs how to convert
the prompt into your language's verbiage.

### Testing a New Language

The MultiPL-E benchmark lives on the Hugging Face Hub, but it is easier to test
and iterate on your new language without uploading a new dataset every time
you make a change. When the translator is ready, you can test it by translating
HumanEval to *L* with the following command:

```bash
cd MultiPL-E/dataset_builder
python3 prepare_prompts_json.py \
     --lang humaneval_to_L.py \
     --doctests transform \
     --prompt-terminology reworded \
     --output ../L_prompts.jsonl
```

This creates the file `L_prompts.jsonl` in the root of the repository. You can
then evaluate a model on these prompts with the following command:

```bash
cd MultiPL-E
python3 automodel_vllm.py \
     --name MODEL_NAME \
     --root-dataset humaneval \
     --use-local \
     --dataset ./L_prompts.jsonl \
     --temperature 0.2 \
     --batch-size 50 \
     --completion-limit 20 \
```

You can safely set --completion-limit 20 and get a reasonable stable
result. Any lower and you'll get variations greater than 1%. The command
above will create a directory named `humaneval-L-MODEL_NAME-0.2-reworded`.
At this point, you can look at the *.json.gz* files to see if the results
look reasonable. We recommend looking at least problem 53. It is an easy
problem that every model should get right.

Finally, you can test the generated code with the following command:

```
cd MultiPL-E
python3 evaluation/src/main.py \
  --dir humaneval-L-MODEL_NAME-0.2-reworded \
  --output-dir humaneval-L-MODEL_NAME-0.2-reworded
```

This creates several *.results.json.gz* files, alongside the *.json.gz* files.

To compute pass@1:

```
cd MultiPL-E
python3 pass_k.py humaneval-L-MODEL_NAME-0.2-reworded
```

## Add a New Benchmark

**These directions are a little stale. Email a.guha@northeastern.edu if you
need some help.**

This is the really easy part. All you need to do is write a Python
program that looks like the following:

```python
def my_function(a: int, b: int, c: int, k: int) -> int:
    """
    Given positive integers a, b, and c, return an integer n > k such that
    (a ** n) + (b ** n) = (c ** n).
    """
    pass
    

### Unit tests below ###
def check(candidate):
    assert candidate(1, 1, 2, 0) == 1
    assert candidate(3, 4, 5, 0) == 2

def test_check():
    check(my_function)
```

You can then put your benchmark in a directory and run through the steps
in the tutorial.

Some things to note:

1. The *unit tests below* line is important, because we look for that in our
   scripts.

2. We also rely on the name `candidate`. This is not fundamental, and we may get
   around to removing it.

3. You can use `from typing import ...` and `import typing`, but you cannot
   have any other code above the function signature.

4. The type annotations are not required, but are necessary to evaluate some
   languages.

5. The assertions must be equalities with simple input and output values,
   as shown above.

6. Finally, note that you do implement the function yourself. You can leave
   the body as `pass`.


## Credits

MultiPL-E was originally authored by:

- Federico Cassano (Northeastern University)
- John Gouwar (Northeastern University)
- Daniel Nguyen (Hanover High School)
- Sydney Nguyen (Wellesley College)
- Luna Phipps-Costin (Northeastern University)
- Donald Pinckney (Northeastern University)
- Ming-Ho Yee (Northeastern University)
- Yangtian Zi (Northeastern University)
- Carolyn Jane Anderson (Wellesley College)
- Molly Q Feldman (Oberlin College)
- Arjun Guha (Northeastern University and Roblox Research)
- Michael Greenberg (Stevens Institute of Technology)
- Abhinav Jangda (University of Massachusetts Amherst)

We thank Steven Holtzen for loaning us his GPUs for a few weeks. We thank
[Research Computing at Northeastern University] for supporting the
Discovery cluster.

Several people have since contributed to MultiPL-E. Please see the
[changelog](https://huggingface.co/datasets/nuprl/MultiPL-E) for those acknowledgments.

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

[BigCode Code Generation LM Harness]: https://github.com/bigcode-project/bigcode-evaluation-harness
[MultiPL-E: A Scalable and Polyglot Approach to Benchmarking Neural Code Generation]: https://ieeexplore.ieee.org/abstract/document/10103177
[SantaCoder]: https://arxiv.org/abs/2301.03988
[MultiPL-E dataset]: https://huggingface.co/datasets/nuprl/MultiPL-E
[StarCoder]: https://arxiv.org/abs/2305.06161
[Multilingual Code Models Evaluation]: https://huggingface.co/spaces/bigcode/multilingual-code-evals
[Conda]: https://conda.io/
[Podman]: https://podman.io/
[Docker]: https://www.docker.com/
