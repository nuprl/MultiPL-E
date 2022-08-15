---
layout: default
title: Installation
nav_order: 1
---

# Prerequisites

1. You need `g++` installed. On Ubuntu Linux, you can `sudo apt-get install
  build-essential`. On Mac OS X, `g++` is an alias for the Clang compiler, which
  should work as well.

2. You will need Python 3.10 or higher. If your system Python is not Python 3.10,
    we recommend installing it in a [Conda] virtual environment:

    ```bash
    $ conda create -n MultiPL-E python=3.10
    $ conda activate MultiPL-E
    ```

3. You will need to install some Python packages:

    ```bash
    $ pip3 install aiohttp numpy pyyaml tqdm yamlize
    ```

## Model-Specific Requirements

If you want to evaluate the performance of an OpenAI Codex model, you will need
an OpenAI API Key and access to the [Codex beta]. You can use MultiPL-E to
evalate *any* model that uses the OpenAI HTTP API. For example, we have written
a web server that serves [Incoder] and tested it on A6000 (48 GB) and RTX 6000
(24 GB) GPUs.

## Get the Code and Verify

First, check out the repository from GitHub:

```bash
$ git clone -c feature.manyFiles=true --depth=1 https://github.com/nuprl/MultiPL-E
```


[Conda]: https://conda.io/
[Codex beta]: https://openai.com/blog/openai-codex/
[Incoder]: https://github.com/arjunguha/research_model_server