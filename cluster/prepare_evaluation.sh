#!/bin/bash
#SBATCH --nodes=1
#SBATCH --mem=16G
#SBATCH --export=ALL
#SBATCH --cpus-per-task=24
#SBATCH --time=0:10:00
#SBATCH --job-name=prepare_evaluation.sh
#SBATCH --partition=express

TARGET_DIR=$1

python3 -m cluster prepare-evaluation --min-job-size 25 \
    --output $TARGET_DIR/evaluation_jobs.txt \
    --paths $(find $TARGET_DIR -maxdepth 1 -mindepth 1 -type d)
