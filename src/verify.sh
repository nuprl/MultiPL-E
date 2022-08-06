#!/bin/bash
LANG=$1
FILE=../experiments/$LANG-davinci-0.2-keep/HumanEval_108_count_nums.yaml
RESULTS=../experiments/$LANG-davinci-0.2-keep/HumanEval_108_count_nums.results.yaml
PATH=~/scala/bin:$PATH
set -x
set -e
rm -f $RESULTS
python3 problem_evaluator.py --max-workers 2 --file $FILE
grep "status:" $RESULTS | sort | uniq -c
