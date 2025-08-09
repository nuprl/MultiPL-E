#!/bin/bash
#PBS -q rt_HG
#PBS -l select=1
#PBS -l walltime=8:00:00
#PBS -P gcf51099

MODEL="Qwen/Qwen3-Coder-30B-A3B-Instruct"
TEMP=0.2
BATCH=20
N_SAMPLES=20
OUT_ROOT="tutorial"

DATASETS_AND_LANGS=(
  "humaneval,adb"
  "humaneval,clj"
  "humaneval,cpp"
  "humaneval,cs"
  "humaneval,d"
  "humaneval,dart"
  "humaneval,elixir"
  "humaneval,go"
  "humaneval,hs"
  "humaneval,java"
  "humaneval,jl"
  "humaneval,js"
  "humaneval,lua"
  "humaneval,ml"
  "humaneval,php"
  "humaneval,pl"
  "humaneval,r"
  "humaneval,rb"
  "humaneval,rkt"
  "humaneval,rs"
  "humaneval,scala"
  "humaneval,sh"
  "humaneval,swift"
  "humaneval,ts"
  "mbpp,adb"
  "mbpp,clj"
  "mbpp,cpp"
  "mbpp,cs"
  "mbpp,d"
  "mbpp,elixir"
  "mbpp,go"
  "mbpp,hs"
  "mbpp,java"
  "mbpp,jl"
  "mbpp,js"
  "mbpp,lua"
  "mbpp,ml"
  "mbpp,php"
  "mbpp,pl"
  "mbpp,r"
  "mbpp,rb"
  "mbpp,rkt"
  "mbpp,rs"
  "mbpp,scala"
  "mbpp,sh"
  "mbpp,swift"
  "mbpp,ts"
)

for pair in "${DATASETS_AND_LANGS[@]}"; do
  IFS=',' read -r DATASET LANG <<< "$pair"
  echo "[$(date +%T)] Generating for dataset=${DATASET}, lang=${LANG}"
  python automodel_vllm.py --name "$MODEL" --root-dataset "$DATASET" --lang "$LANG" --temperature "$TEMP" --batch-size "$BATCH" --completion-limit "$N_SAMPLE" --output-dir-prefix "$OUT_ROOT"
done