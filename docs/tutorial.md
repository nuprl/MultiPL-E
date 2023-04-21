---
layout: default
title: Tutorial
nav_order: 1
---

# Tutorial

In this tutorial, we will run a small experiment to evaluate the performance of
[InCoder] on Rust with a small subset of the MBPP benchmarks. 
We will only fetch 20 completions per problem, so that you
can run it quickly it quickly on a single machine.  
You can also run on the full suite of benchmarks or substitute your own
benchmark programs. Later, we'll show you how to add support for other languages
and evaluate other models.

## Prerequisites

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

## Using MultiPL-E

Out of the box, MultiPL-E supports several models, programming languages, 
and datasets.  Using MultiPL-E is a two step process:

1. We *generate* completions, which requires a GPU

2. We *execute* the generated completions, which requires a machine that
   supports Docker or Podman.

### Generation

The following command will generate completions for the HumanEval benchmark,
which is originally in Python, but translated to Rust with MultiPL-E:

```
mkdir tutorial
python3 automodel.py --name bigcode/gpt_bigcode-santacoder --root-dataset humaneval --lang rs --temperature 0.2 --batch-size 20 --completion-limit 20 --output-dir-prefix tutorial
```

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
recommend using the container that we have provided. The container includes the toolchains
for all languages that we support. Without it, you will neeed to painstakingly install them
again. There is also a risk that the generated code may do something that breaks your system.
The container mitigates that risk.

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

The experiment prints pass rates for k=1 as we only made 20 results at a temperature of 0.2. 
If you want to see pass@10 and pass@100 pass rates, use `--temperature 0.8` and
when you generate completions and *remove the `--completion-limit 20` flag*.

**Warning:** In generation, we used `--completion-limit 20` to only generate
20 samples for each prompt. You can remove this flag to generate 200 samples,
which is typical, but can take 10 times longer. We have found that 20 samples
is adequate for estimate pass@1. However, you need more samples to estimate
pass@10 and pass@100.

[Conda]: https://conda.io/
[Podman]: https://podman.io/
[Docker]: https://www.docker.com/
