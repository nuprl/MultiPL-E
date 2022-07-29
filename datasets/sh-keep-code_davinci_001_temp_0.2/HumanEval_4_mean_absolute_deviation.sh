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
echo 0

}

candidate() {
    mean_absolute_deviation "$@"
}

run_test() {
    [[ $(candidate "1.0 2.0") = 0.5 ]]
    [[ $(candidate "1.0 2.0 3.0 4.0") = 1.0 ]]
    [[ $(candidate "1.0 2.0 3.0 4.0 5.0") = 1.2 ]]
}

run_test