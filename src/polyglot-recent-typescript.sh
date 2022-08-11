#!/bin/bash
#SBATCH --mem=48G
#SBATCH --export=ALL
#SBATCH --cpus-per-task=24
#SBATCH --time=0:30:00
#SBATCH --job-name=polyglot-eval
#SBATCH --partition=express
#SBATCH --exclusive
source ~/.bashrc
module load nodejs

PATH=../node_modules/typescript/bin:$PATH

LIST_FILES=files.txt

if [ $# -eq 1 ]; then
  LIST_FILES=$1
fi

echo "$LIST_FILES[$SLURM_ARRAY_TASK_ID]"
python3 problem_evaluator.py --job-file $LIST_FILES --job-file-line $SLURM_ARRAY_TASK_ID --max-workers 23

