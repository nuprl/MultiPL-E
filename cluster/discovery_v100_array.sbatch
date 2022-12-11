#!/bin/bash
#SBATCH --nodes=1
#SBATCH --mem=40G
#SBATCH --export=ALL
#SBATCH --cpus-per-task=6
#SBATCH --time=8:00:00
#SBATCH --job-name=v100-arrayjob
#SBATCH --gres=gpu:v100-sxm2:1
#SBATCH --partition=gpu

# This is an sbatch script that runs a job array on V100 nodes on Discovery.
# To use it, create a file JOB_FILE with a shell command on each line. E.g.,
#
#     nvidia-smi
#     nvidia-smi
#     nvidia-smi
#
# Ensure the current environment is setup to use GPUs. The following command
# gives you PyTorch, transformers, etc.:
#
#     source ~a.guha/bin/gpuenv
#
# Next, run *just one line* of the job file:
#
#     sbatch  --array 1 ./discovery_v100_array.sbatch JOB_FILE
#
# Slurm trick: the lanched jobs inherit the environment of the sbatch call,
# so you do not need to load any modules on the remote machines, as long as
# you load all modules on the current machine.
#
# Finally, if the single job worked, run all jobs:
#
#     sbatch --array 2-N ./discovery_v100_array.sbatch JOB_FILE
#
# Final note: you can pass extra arguments after the JOB_FILE to this script.
# those are appended to the command line of each job.
JOB_FILE=$1
EXTRA_ARGS=${@:2}
JOB=`sed -n ${SLURM_ARRAY_TASK_ID}p ${JOB_FILE}`
echo $JOB $EXTRA_ARGS
$JOB $EXTRA_ARGS
