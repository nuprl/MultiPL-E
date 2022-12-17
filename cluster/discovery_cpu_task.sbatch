#!/bin/bash
#SBATCH --nodes=1
#SBATCH --mem=16G
#SBATCH --export=ALL
#SBATCH --cpus-per-task=48
#SBATCH --time=0:10:00
#SBATCH --job-name=args
#SBATCH --partition=express
echo $@
$@
