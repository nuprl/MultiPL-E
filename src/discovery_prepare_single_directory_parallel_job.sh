#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 <EXPERIMENT_DIR> <OUTPUT_FILE_NAME>" > /dev/stderr
  exit 1
fi

EXPERIMENT_DIR=$1
OUTPUT_FILE_NAME=$2

if [ -f $OUTPUT_FILE_NAME ]; then
  echo "$OUTPUT_FILE_NAME already exists" > /dev/stderr
  exit 1
fi

for F in `find $EXPERIMENT_DIR -name '*.json' -not -name '*.results.json'`; do
  echo "dummy dummy $F" >> $OUTPUT_FILE_NAME
done

echo "Now run:"
echo ""
echo "    wc -l $OUTPUT_FILE_NAME"
echo "    sbatch --array 0-N discovery_array_job.sh $OUTPUT_FILE_NAME"
echo ""
echo "where N is the line count minus one."
