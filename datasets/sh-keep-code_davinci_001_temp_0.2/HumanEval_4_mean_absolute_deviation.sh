#!/bin/bash
# For a given list of input numbers, calculate Mean Absolute Deviation
# around the mean of this dataset.
# Mean Absolute Deviation is the average absolute difference between each
# element and a centerpoint (mean in this case):
# MAD = average | x - x_mean |
# >>> mean_absolute_deviation([1.0, 2.0, 3.0, 4.0])
# 1.0
#
# $1 is a space-separated list
mean_absolute_deviation() {
    local sum=0
    local count=0
    local mean=0
    for num in $@; do
        sum=$(echo "$sum + $num" | bc -l)
        count=$(echo "$count + 1" | bc -l)
    done
    mean=$(echo "$sum / $count" | bc -l)
    local sum_deviation=0
    for num in $@; do
        sum_deviation=$(echo "$sum_deviation + abs($num - $mean)" | bc -l)
    done
    echo $(echo "$sum_deviation / $count" | bc -l)

}

candidate() {
    mean_absolute_deviation "$@"
}

set -e
run_test() {
    [[ $(candidate "1.0 2.0") = "0.5" ]]
    [[ $(candidate "1.0 2.0 3.0 4.0") = "1.0" ]]
    [[ $(candidate "1.0 2.0 3.0 4.0 5.0") = "1.2" ]]
}

run_test