#!/bin/bash
#SBATCH --partition=express
#SBATCH --time=01:00:00
#SBATCH --ntasks=200
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=2G
#SBATCH --export=ALL
#SBATCH --exclusive
#SBATCH --job-name=do_executions

# https://rcc-uchicago.github.io/user-guide/midway23/examples/example_job_scripts/#parallel-batch-jobs
module load gnu-parallel

parallel="parallel --bar --delay 0.2 -j $SLURM_NTASKS --joblog runtask.log"

$parallel -a executions.txt "srun -N1 -n1 python3 do_executions.py $1" 
