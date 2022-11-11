# MultiPL-E Inference

The script `main.py` is the primary program that we use to drive inference for MultiPL-E. The script dynamically loads a model, and there are several
supported models in this directory:

- `codegen.py`
- `incoder.py`
- `codegen_fauxpilot.py`

You can use any of these as a template for adding support for a new model.

*Minimal example:* Here is a minimal example with all required arguments:

```
python main.py --model-name incoder --root-dataset mbpp --lang rs --temperature 0.2 --batchsize 16
```

This will produce completions for Incoder-6B and should work on a GPU with 48GB
VRAM. (Lower the `--batchsize` if you have less VRAM.) The command stores
results in the directory called `mbpp-rs-incoder-0.2-reworded`.

*Batch processing:* Use the `--input-start-index` and `--input-limit` arguments
to partition inference across several batch jobs. For example, HumanEval
has less than 200 problems. To run about 50 problems per job in a Slurm
cluster, one could use the following commands:

```
sbatch python main.py --model-name incoder --root-dataset humaneval --lang rs --temperature 0.2 --batchsize 16 --input-start-index 0 --input-limit 50
sbatch python main.py --model-name incoder --root-dataset humaneval --lang rs --temperature 0.2 --batchsize 16 --input-start-index 50 --input-limit 50
sbatch python main.py --model-name incoder --root-dataset humaneval --lang rs --temperature 0.2 --batchsize 16 --input-start-index 100 --input-limit 50
sbatch python main.py --model-name incoder --root-dataset humaneval --lang rs --temperature 0.2 --batchsize 16 --input-start-index 150 --input-limit 50
```

