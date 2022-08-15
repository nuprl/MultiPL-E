---
layout: default
title: Introduction
nav_order: 0
---

*MultiPL-E* is a multi-programming language benchmark for evaluating the code
generation performance of large language model (LLMs) of code.


## Tutorial

In this tutorial, we will run a small experiment to evaluate the performance of
OpenAI Codex on C++ with the HumanEval benchmarks. So that you can run it
quickly it quickly on a single machine, we will only fetch 20 completions per
problem. We suggest C++ because you probably already have a C++ compiler on
your machine. But, you can substitute it with any language that we support.
Later, we'll show you how to add support for other languages and evaluate
other models.

*Prerequisites:*

1. You need `g++` installed. On Ubuntu Linux, you can `sudo apt-get install
  build-essential`. On Mac OS X, `g++` is an alias for the Clang compiler, which
   should work as well.

2. You will need Python 3.10 or higher. If your system Python is not Python 3.10,
    we recommend installing it in a [Conda] virtual environment:

    ```
    conda create -n multipl-env python=3.10
    conda activate multipl-env
    ```

3. You will need to install some Python packages:

    ```
    pip3 install aiohttp numpy pyyaml tqdm yamlize
    ```

4. You will need an OpenAI API key and access to the Codex beta.

First, check out the repository in a terminal:

```
git clone [FILL]
```

Now, enter the `src` directory:

```
cd src
```

This directory has several scripts to transform Python benchmarks to several
other languages, test the translated benchmarks, and calculate pass rates.

The first step is to *prepare prompts* for the model. The following command
creates the directory `../tutorial` and places within it several YAML files,
one for each benchmark.

```
python3 prepare_prompts_yaml.py --lang humaneval_to_cpp.py --target-dir ../tutorial
```

If you examine one of these files, you'll see that each file  has a prompt
for the model. The tool has reformatted the Python docstring in the original
program into a C++-style comment, and translated the Python signature into
a C++ signature. Each file also has a block of test cases, translated from
Python to C++. But, these tests will not be shown the model.

The next step is to *generate completions* using the model. In our paper, we
generate 200 completions for each prompt, which can take some time. To speed
up the tutorial, we recommend only generating 20 completions for each prompt.
Create a file called `model_keys.csv` in the `src` directory that looks like
this:

```
Label,Model,Key
My OpenAI Key,,YOUR_OPENAI_KEY
```

With this file in place, we can now generate completions:

```
python3 gather_completions.py --dir ../tutorial --max-samples 20 --model davinci --temperature 0.2 --limit-completions 20 
```

The more calls to the API you can at once, the faster this will execute. You will almost 
certainly see some warnings about being rate-limited. These are innocuous. 
The script is careful to back off.

Once the script completes, you can evaluate the completions using the tests
cases. If you have a *2N* core machine, we recommend using *N* workers:

```
python3 problem_evaluator.py --dir ../tutorial --max-workers N
```

Finally, you can calculate the pass rates:

```
python3 single_experiment_pass_k.py ../tutorial
```

The experiment prints pass rates for k=1, k=10, and k=100. *Ignore the k=10 and
k=100 rates. They are not reliable with just 20 samples.* However, the *k=1*
rate is close to what you'll get with more samples in a full-fledged experiment.

