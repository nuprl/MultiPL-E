# MultiPL-E Dataset Builder

## Introduction

This directory contains the code to build the MultiPL-E dataset from source
Python programs. You only need to work with this code if you're trying to
add a new dataset or programming language to MultiPL-E.

If your goal is to evaluate a model with MultiPL-E, you can ignore this
code and use the pre-built dataset on the HuggingFace hub:

https://huggingface.co/datasets/nuprl/MultiPL-E

## Requirements

Python 3.10+

## Usage

Builds everything:

```
python3 all_prepare_propmts.py
```

To generate HumanEval+ prompts, first generate the dataset:
```
python3 ../humaneval_plus/generate_data.py --output-folder ../datasets/humaneval_plus --cache-folder ../cache --humaneval-plus-path ../datasets --humaneval-plus-version 0.1.8 --multiple-humaneval-path ../datasets/originals-with-cleaned-doctests
```