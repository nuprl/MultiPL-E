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

1. You will need Python 3.10 or higher. If your system Python is not Python 3.10,
    we recommend installing it in a [Conda] virtual environment:

    ```bash
    $ conda create -n MultiPL-E python=3.10
    $ conda activate MultiPL-E
    ```

2. You will need to install some Python packages:

    ```bash
    $ pip3 install aiohttp numpy tqdm pytest datasets torch transformers
    ```

3. You need to install one of [Podman] or [Docker].

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
   python main.py --model-name incoder --root-dataset mbpp --lang rs --temperature 0.2 --batch-size 16 --completion-limit 20
   ```

   This command will download the [prepared prompts](https://huggingface.co/datasets/nuprl/MultiPL-E) we hosted on HuggingFace and produce completions for Incoder-6B.
   The program should work on a GPU with 48GB VRAM; lower the `--batchsize` if you have less VRAM.
   The command stores 20 completions in the directory called `mbpp-rs-incoder-0.2-reworded`.

Read [inference/README.md](https://github.com/nuprl/MultiPL-E/tree/main/inference) for more details to generating completions.

## Evaluating Completions

Now, we need to evaluate our completions.

6. Pull the [evaluation container](https://github.com/nuprl/MultiPL-E/pkgs/container/multipl-e-evaluation) from the packages list, and tag the container: 

   ```bash
   podman pull ghcr.io/nuprl/multipl-e-evaluation
   podman tag ghcr.io/nuprl/multipl-e-evaluation multipl-e-eval
   ```

   Replace `podman` to `docker` if you are using docker.

7. Create a directory for results of evaluation:

   ```bash
   mkdir results 
   ```

8. Execute the following command:

   ```bash
   # For Docker, replace `podman` with `docker`
   podman run --rm \
      --network none \
      --volume ./mbpp-rs-incoder-0.2-reworded:/inputs:ro \
      --volume ./results:/outputs:rw \
      multipl-e-eval --dir /inputs --output-dir /outputs
   ```

At this time, the generated completions should be in the `outputs` directory.

For more details about generating the results, see the [documentation and code for evaluation](https://github.com/nuprl/MultiPL-E/tree/main/evaluation).

## Calculate Pass Rates

Finally, you can calculate the pass rates:

```
python3 ../src/single_experiment_pass_k.py ./results
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
[Docker]: https://www.docker.com/