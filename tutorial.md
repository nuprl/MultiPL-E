---
layout: default
title: Tutorial
nav_order: 1
---

# Tutorial

In this tutorial, we will run a small experiment to evaluate the performance of
OpenAI Codex on C++ with a small subset of the HumanEval benchmarks. So that you
can run it quickly it quickly on a single machine, we will only fetch 20
completions per problem.  
You can also run on the full suite of benchmarks or substitute your own
benchmark programs. Later, we'll show you how to add support for other languages
and evaluate other models.

## Prerequisites

1. You will need Python 3.10 or higher. If your system Python is not Python 3.10,
    we recommend installing it in a [Conda] virtual environment:

    ```bash
    $ conda create -n MultiPL-E python=3.10
    $ conda activate MultiPL-E
    ```

2. You will need to install some Python packages:

    ```bash
    $ pip3 install aiohttp numpy tqdm pytest
    ```

3. Check out the repository:    

   ```bash
   $ git clone -c feature.manyFiles=true --depth=1 https://github.com/nuprl/MultiPL-E
   ```

## Generating Completions

The next step is to generate the completions.

4. `cd` into the `inference` directory:
   ```bash
   cd MultiPL-E/inference 
   ```

5. We are going to use [Incoder] to generate 20 Rust completions for each prompts in `mbpp` dataset:

   ```bash
   python main.py --model-name incoder --root-dataset mbpp --lang rs --temperature 0.2 --batchsize 16 --completion-limit 20
   ```

   This will produce completions for Incoder-6B and should work on a GPU with 48GB VRAM; lower the `--batchsize` if you have less VRAM. The command stores 20 completions in the directory called `mbpp-rs-incoder-0.2-reworded`.

Read [inference/README.md](https://github.com/nuprl/MultiPL-E/tree/main/inference) for more details to generating completions.

## Evaluating Completions

Now, we need to evaluate our completions.

6. First, `cd` into the `evaluation` directory:

   ```bash
   cd ../evaluation
   ```

7. Build the evaluation container. You need [Podman], [Docker] or some other compatible tools:

   ```bash
   # podman
   make build
   # For docker, use 
   make DOCKER_EXEC="docker" testmake 
   ```

9. Create a directory for results of evaluation:

   ```bash
   mkdir outputs

8. Execute the following command:

   ```bash
   # For Docker, replace `podman` with `docker`
   podman run --rm \
      --network none \
      --volume ../inference/mbpp-rs-incoder-0.2-reworded:/inputs:ro \
      --volume ./outputs:/outputs:rw \
      multipl-e-evaluation --dir /inputs --output-dir /outputs
   ```

At this time, the generated completions should be in the `outputs` directory.
More documentations about the 

## OLD: Prerequisites and Code

1. You will need the toolchain for the programming language that you want to
   evaluate. To get started, we recommend C++, since you are likely to already
   have it installed. On Linux, our scripts expect `g++` to work. On MacOS,
   `g++` is an alias Clang which should work as well.


4. Check out the repository:

   ```bash
   $ git clone -c feature.manyFiles=true --depth=1 https://github.com/nuprl/MultiPL-E
   ```

5. Finally, enter the `src` directory, where you will run the rest of the
   tutorial:

   ```bash
   cd MultiPL-E/src
   ```


## Prepare Your Model

Within the `src` directory that you're already inside, create a file called
`model_keys.csv` that looks like this:

```
Label,Model,Key
My OpenAI Key,,YOUR_OPENAI_KEY
My Incoder Server,incoder,http://localhost:8080/v2/completions
```

If you want to evaluate the performance of an OpenAI Codex model, you will need
an OpenAI API Key and access to the [Codex beta].

Alternatively, you can use MultiPL-E to evaluate any other model, as long as you
can serve completions over the web with the OpenAI HTTP API.  For example, we
have written a web server that serves [Incoder] and tested it on RTX A6000 (48
GB) and Quadro RTX 6000 (24 GB) GPUs.

## Prepare Prompts

The first step is to *prepare prompts* for the model. The following command
creates the directory `../tutorial` and places within it several YAML files,
one for each benchmark.

```
python3 prepare_prompts_yaml.py --lang humaneval_to_cpp.py --originals ../datasets/miniset --target-dir ../tutorial
```

If you examine one of these files, you'll see that each file  has a prompt
for the model. The tool has reformatted the Python docstring in the original
program into a C++-style comment, and translated the Python signature into
a C++ signature. Each file also has a block of test cases, translated from
Python to C++. But, these tests will not be shown the model.

## Generate Completions

After generating prompts, the next step is to *generate completions*. In our
 paper, we generate 200 completions for each prompt, which can take some time.
To speed up the tutorial, we recommend only generating 20 completions for each
prompt.

```
python3 gather_completions.py --dir ../tutorial --max-samples 20 --model $MODEL_NAME --temperature 0.2 --limit-completions 20 
```

Above, replace `$MODEL_NAME` with the name of the model you want to evaluate.

If you're generating completions from an OpenAI model, you will almost certainly
see some warnings about being rate-limited. These are innocuous. The script is
careful to back off.

## Evaluate Completions

After generating completions, you can evaluate the completions using the tests
cases. If you have a *2N* core machine, we recommend using *N* workers:

```
python3 problem_evaluator.py --dir ../tutorial --max-workers N
```

## Calculate Pass Rates

Finally, you can calculate the pass rates:

```
python3 single_experiment_pass_k.py ../tutorial
```

The experiment prints pass rates for k=1, k=10, and k=100. *Ignore the k=10 and
k=100 rates. They are not reliable with just 20 samples.* However, the *k=1*
rate is fairly reliable to what you'll get with more samples in a full-fledged
experiment.

# What's Next?

There are several things you may want to do next.







[Conda]: https://conda.io/
[Codex beta]: https://openai.com/blog/openai-codex/
[Incoder]: https://github.com/arjunguha/research_model_server
[Podman]: https://podman.io/
[Podman]: https://www.docker.com/