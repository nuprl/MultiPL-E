#!/bin/bash

for srcf in $@; do
    pygmentize -O full,style=colorful -f html -o "$(basename ${srcf}).html" ${srcf}
done