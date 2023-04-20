#!/bin/bash
#SBATCH --partition=express
#SBATCH --time=00:05:00
#SBATCH --ntasks=100
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=1G
#SBATCH --export=ALL
#SBATCH --job-name=pass_k


# Usage:
#     sbatch pass_k.sbatch <output_file> <dir1> <dir2> ...

# https://rcc-uchicago.github.io/user-guide/midway23/examples/example_job_scripts/#parallel-batch-jobs
module load gnu-parallel

set -x
set -e

PARALLEL_TASKS=$(($SLURM_NTASKS - 1))

parallel="parallel -j $PARALLEL_TASKS"

OUT_FILE=$1
shift

echo "Dataset,Pass@k,Estimate,NumProblems,MinCompletions,MaxCompletions" > $OUT_FILE
$parallel "srun -N1 -n1 python3 ../pass_k.py --suppress-header" ::: $@ >> $OUT_FILE
