#!/bin/bash
#SBATCH --array=1-945
#SBATCH --mem=48G
#SBATCH --export=ALL
#SBATCH --cpus-per-task=24
#SBATCH --time=0:05:00
#SBATCH --job-name=polyglot-eval
#SBATCH --partition=express
#SBATCH --exclusive
module load oracle_java julia
cd /home/a.guha/repos/polyglot-codegen-evaluation/src
FILE=`sed -n ${SLURM_ARRAY_TASK_ID}p files.txt`
echo $FILE
python3 problem_evaluator.py --target $FILE --max-workers 24

