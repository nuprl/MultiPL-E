#!/bin/bash
#SBATCH --mem=48G
#SBATCH --export=ALL
#SBATCH --cpus-per-task=24
#SBATCH --time=0:05:00
#SBATCH --job-name=polyglot-eval
#SBATCH --partition=express
#SBATCH --exclusive
module load oracle_java julia

if [ $USER == "a.guha" ]; then
  eval `spack load --sh php lua racket`
elif [ $USER == "l.phipps-costin" ]; then
  export NVM_DIR="$HOME/.nvm"
  . "$NVM_DIR/nvm.sh"
elif [ $USER == "zi.ya" ]; then
  eval `spack load --sh lua dmd`
else
  echo "Unkown user account: $USER"
fi

LUA_PATH="${PWD}/luaunit.lua"
FILE=`sed -n ${SLURM_ARRAY_TASK_ID}p files.txt`
echo $FILE
python3 problem_evaluator.py --target $FILE --max-workers 24

