#!/bin/bash
#SBATCH --mem=48G
#SBATCH --export=ALL
#SBATCH --cpus-per-task=24
#SBATCH --time=0:30:00
#SBATCH --job-name=polyglot-single
#SBATCH --partition=express
#SBATCH --exclusive

###############################################################################
#                                                                             #
# Usage:                                                                      #
#                                                                             #
# sbatch ./discovery_single.sh <EXPERIMENT_DIR>                               #
#                                                                             #
# <EXPERIMENT_DIR> should be a single directory with *.yaml files.            #
#                                                                             #
# Look for errors in slurm-<JOB_ID>.out.                                      #
#                                                                             #
# WARNING: With 161 problems and 200 completions per problem, this script can #
# take hours to run.                                                          #
#                                                                             #
###############################################################################

set -e

###############################################################################
# Configuration for Northeastern's Discovery Cluster                          #
###############################################################################

# Your .bashrc should only setup conda and basic modules like discovery.
# *Do not* change your shell to anything other than bash. Research Computing
# recommends not loading anything 
source ~/.bashrc
source ~/bin/activate_conda
module load R gcc/9.2.0
conda activate /home/a.guha/.conda/envs/polyglot
PATH=/home/a.guha/scala/bin:/work/arjunguha-research-group/software/bin:$PATH
eval `/home/a.guha/repos/spack/bin/spack load --sh dmd`

###############################################################################
# Hopefully generic configuration                                             #
###############################################################################

let MAX_WORKERS=$SLURM_CPUS_PER_TASK-1


LUA_PATH="${PWD}/luaunit.lua"
hostname
lscpu | sed -nr '/Model name/ s/.*:\s*(.*) @ .*/\1/p'
g++ -o /tmp/arjun_a.out verification/skylake_error.cpp

python3 problem_evaluator.py --dir $1 --max-workers $MAX_WORKERS

