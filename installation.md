---
layout: default
title: Installation
nav_order: 1
---

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
