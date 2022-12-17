#!/bin/bash
#SBATCH --mem=48G
#SBATCH --export=ALL
#SBATCH --cpus-per-task=24
#SBATCH --time=0:30:00
#SBATCH --job-name=multipl-e-evaluation
#SBATCH --partition=express
#SBATCH --exclusive

module load singularity

# Local temporary directory that we use as HOME to make Swift happy. Since
# this script takes exclusive control of a machine, we don't need to distinguish
# the directory in any other way, e.g., no need for username or PID in the name.
mkdir -p /tmp/multipl-e

trap "rm -rf /tmp/multipl-e" EXIT

singularity exec \
    --home /tmp/multipl-e:/home/$USER \
    --network none \
    --bind `realpath $2`:/dataset:rw \
    /work/arjunguha-research-group/arjun/containers/multipl-e-evaluation_latest.sif \
    python3 evaluation/src/main.py --job-file $1 --job-file-line $SLURM_ARRAY_TASK_ID
