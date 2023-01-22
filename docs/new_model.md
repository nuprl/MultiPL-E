---
layout: default
title: Evaluate a New Model
nav_order: 2
---

# Evaluate a New Model

If you're interested in evaluating a different model, we recommend adapting the
code for our [Incoder model server], which supports a *tiny* portion of the
OpenAI HTTP API. The code has a single [POST handler] for the completions
endpoint.

You can deploy multiple servers for the same model by adding multiple URLs to
the `model_keys.csv` file. The `gather_completions.py` script is carefully
designed to query each server serially, so you don't have to worry queing
concurrent requests. See the [Tutorial] for more information on `model_keys.csv`
and `gather_completions.py`.


[Incoder model server]: https://github.com/arjunguha/research_model_server
[POST handler]: https://github.com/arjunguha/research_model_server/blob/main/incoder_server.py#L80
[Tutorial]: ./tutorial.html