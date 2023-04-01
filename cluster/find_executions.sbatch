#!/bin/bash
#SBATCH --partition=express
#SBATCH --time=00:10:00
#SBATCH --ntasks=200
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=1G
#SBATCH --export=ALL
#SBATCH --job-name=find_executions

# https://rcc-uchicago.github.io/user-guide/midway23/examples/example_job_scripts/#parallel-batch-jobs
module load gnu-parallel

parallel="parallel -j $SLURM_NTASKS"

$parallel "srun -N1 -n1 python3 find_executions.py --host $1 --container /dataset" ::: $1/* > executions.txt
