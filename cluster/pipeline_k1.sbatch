#!/bin/bash
#SBATCH --nodes=1
#SBATCH --mem=1G
#SBATCH --export=ALL
#SBATCH --cpus-per-task=2
#SBATCH --time=0:02:00
#SBATCH --job-name=pipeline_k1
#SBATCH --partition=express

# Do NOT start this script itself. It is the continuation of pipeline.sbatch.

set -e

TARGET_DIR=$1

LAST_EVALUATION_JOB_INDEX=`wc -l $TARGET_DIR/evaluation_jobs.txt | cut -d' ' -f1`
EVALUATION_JOB_ARRAY_ID=$(sbatch --array 1-$LAST_EVALUATION_JOB_INDEX --output=$TARGET_DIR/logs/$SLURM_JOB_ID-evaluation-%a-%a.out ./cluster/discovery_evaluation.sh /dataset/evaluation_jobs.txt $TARGET_DIR | cut -d' ' -f4)

# All directories in $TARGET_DIR, excluding .git
DIRS=$(find $TARGET_DIR -maxdepth 1 -mindepth 1 -type d | grep -v .git)

sbatch --mail-type=ALL --mail-user=$USER@northeastern.edu \
    --dependency=afterok:$EVALUATION_JOB_ARRAY_ID \
    --output=$TARGET_DIR/pass_k_%j.csv \
    ./cluster/discovery_cpu_task.sbatch python3 src/single_experiment_pass_k.py $DIRS
