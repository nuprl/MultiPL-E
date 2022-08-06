#!/bin/bash
#SBATCH --mem=48G
#SBATCH --export=ALL
#SBATCH --cpus-per-task=24
#SBATCH --time=0:30:00
#SBATCH --job-name=polyglot-eval
#SBATCH --partition=express
#SBATCH --exclusive
source ~/.bashrc
module load R
conda activate polyglot
PATH=/home/a.guha/scala/bin:$PATH

LIST_FILES=files.txt

if [ $# -eq 1 ]; then
  LIST_FILES=$1
fi

if [ $USER == "a.guha" ]; then
  echo "I am $USER"
elif [ $USER == "l.phipps-costin" ]; then
  module load nodejs
  export NODE_PATH=../node_modules
elif [ $USER == "zi.ya" ]; then
  eval `spack load --sh lua dmd`
else
  echo "Unkown user account: $USER"
fi

LUA_PATH="${PWD}/luaunit.lua"
echo "jobs[$SLURM_ARRAY_TASK_ID]"
python3 problem_evaluator.py --job-file jobs --job-file-line $SLURM_ARRAY_TASK_ID --max-workers 23

