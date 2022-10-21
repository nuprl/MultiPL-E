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