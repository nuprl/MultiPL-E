This directory contains scripts for running MultiPL-E on a cluster. They are
designed for the Northeastern Discovery cluster, but can probably be adapted
quite easily to other clusters.

## Preparing the Singularity Container Image

From the root of the repository, run

```
singularity pull docker://ghcr.io/nuprl/multipl-e-evaluation
```

This wll create the file `multipl-e-evaluation_latest.sif`, which is the
container.

## Building the Evaluation Job List

A job list file has a list of completions that need to be evaluated. To build a
job list, go to the root of the repository (the parent of this directory) run:

```
python3 -m cluster build-job-file --output FILE
```

On standard error, you'll see a progress bar and information on missing
experiments. The output `FILE` has a list of completion files that are missing
some or all of their results. The script assumes that all completions are
in the `./experiments` directory.

By default, the script emits at least 50 files per line, and no more than
1000 lines. This suites the Discovery quotas and resources: a job array
cannot have more than 1000 elements, and we reserve nodes with 24 cores.

## Running the Evaluation in Parallel

```
sbatch --array 1--N ./cluster/discovery_evaluation.sh FILE
```

Where N is the number of lines in the job file FILE.
