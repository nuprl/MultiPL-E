# Discovery (a new approach)

mkdir rundir
sbatch find_executions.sbatch PROMPTS_ROOT

PROMPTS_ROOT may have subdirectories.

sbatch do_executions.sbatch PROMPTS_ROOT
