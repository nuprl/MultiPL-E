# Multi-Programming Language Evaluation of Large Language Models of Code (MultiPL-E)

Please visit the [website](https://nuprl.github.io/MultiPL-E/) or read our [paper](https://arxiv.org/abs/2208.08227) for more information.

## Versions

- Version 0.2.0

  + This version was used to evaluate SantaCoder.

## Evaluation on Discovery

These instructions will run inference and evaluation on the Northeastern
Discovery cluster. It should be possible to easily adapt the scripts for other
Slurm clusters.

### Prerequisites

On a compute node, run

```
singularity pull docker://ghcr.io/nuprl/multipl-e-evaluation
```

This wll create the file `multipl-e-evaluation_latest.sif`, which is the
container. The file cluster/discovery_evaluation.sh assumes that the file is 
saved as 
`/work/arjunguha-research-group/arjun/containers/multipl-e-evaluation_latest.sif`.

You also need an environment that has the MultiPL-E dependencies. On Discovery,
you can use `source ~a.guha/bin/gpuenv`, which activates an appropriate
Conda environment.

### Running the Evaluation

You can do this on the login node or a compute node with limited resources.

1. Activate an appropriate environment:

   ```
   source ~a.guha/bin/gpuenv
   ```

2. Enter the root of the MultiPL-E repository:

   ```
   cd /work/arjunguha-research-group/arjun/repos/MultiPL-E
   ```

3. Create a directory for experiment results:

   ```
   mkdir experiments
   ```

   You can re-use this directory to incrementally add new experiments.

4. Create a file called `experiments/inference.sh`. Each line of the file
   should run inference. For example:

   ```
   python -m inference --model-name inference.bigcode_mha --root-dataset humaneval --lang py --temperature 0.2 --batch-size 50
   ```

   We will *not* run this shell script directly. Instead, we will run each line
   on a separate GPU node. Therefore, ensure that no command spans multiple
   lines (i.e., do not use trailing `\`) and do not include the `#!` on the
   first line.

5. Run `./cluster/pipeline.sh experiments`

   You will receive an email at your `@northeastern.edu` address when complete.

   The script puts all logs files in `experiments/logs`.
