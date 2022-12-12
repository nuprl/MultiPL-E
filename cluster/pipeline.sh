#!/bin/bash

# Abort on error
set -e

# Expect one argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <target_dir>"
    exit 1
fi

TARGET_DIR=$1

# Abort if TARGET_DIR/inference.sh does not exist
if [ ! -f $TARGET_DIR/inference.sh ]; then
    echo "ERROR: $TARGET_DIR/inference.sbatch does not exist"
    exit 1
fi

# Each line in inference.sh is a job.
NUM_INFERENCE_JOBS=`wc -l $TARGET_DIR/inference.sh | cut -d' ' -f1`

# Queue the inference job array.
INFERENCE_JOB_ID=$(sbatch --array 1-$NUM_INFERENCE_JOBS --output $TARGET_DIR/logs/$SLURM_JOB_ID-inference-%A-%a.out cluster/discovery_v100_array.sbatch $TARGET_DIR/inference.sh --output-dir-prefix $TARGET_DIR | cut -d' ' -f4)

# Gather the list of completions that are missing results. Note that this may
# pickup completions that were previously placed in $TARGET_DIR.
PREPARE_EVALUATION_JOB_ID=$(sbatch --dependency=afterok:$INFERENCE_JOB_ID --output $TARGET_DIR/logs/$SLURM_JOB_ID-prepare-evaluation-%j.log cluster/prepare_evaluation.sh $TARGET_DIR | cut -d' ' -f4)

# This is basically continuation passing style. The next task is a job array
# that runs evaluation. However, the size of the array depends on the number of
# jobs needed. So, we cannot statically schedule it.
sbatch --dependency=afterok:$PREPARE_EVALUATION_JOB_ID --output $TARGET_DIR/logs/$SLURM_JOB_ID-k1-%j.log cluster/pipeline_k1.sbatch $TARGET_DIR


