#!/bin/bash
# Create a function that returns a tuple (a, b), where 'a' is
# the largest of negative integers, and 'b' is the smallest
# of positive integers in a list.
# If there is no negative or positive integers, return them as None.
# Examples:
# largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (None, 1)
# largest_smallest_integers([]) == (None, None)
# largest_smallest_integers([0]) == (None, None)
#
# $1 is a space-separated list
largest_smallest_integers() {
    # your code here
    if [ -z "$1" ]; then
        echo "None None"
    else
        local a=0
        local b=0
        for i in $1; do
            if [ $i -lt 0 ]; then
                if [ $a -eq 0 ]; then
                    a=$i
                elif [ $a -lt $i ]; then
                    a=$i
                fi
            elif [ $i -gt 0 ]; then
                if [ $b -eq 0 ]; then
                    b=$i
                elif [ $b -gt $i ]; then
                    b=$i
                fi
            fi
        done
        echo "$a $b"
    fi

}

candidate() {
    largest_smallest_integers "$@"
}

run_test() {
    [[ $(candidate "2 4 1 3 5 7") = "None 1" ]]
    [[ $(candidate "2 4 1 3 5 7 0") = "None 1" ]]
    [[ $(candidate "1 3 2 4 5 6 -2") = "-2 1" ]]
    [[ $(candidate "4 5 3 6 2 7 -7") = "-7 2" ]]
    [[ $(candidate "7 3 8 4 9 2 5 -9") = "-9 2" ]]
    [[ $(candidate "") = "None None" ]]
    [[ $(candidate "0") = "None None" ]]
    [[ $(candidate "-1 -3 -5 -6") = "-1 None" ]]
    [[ $(candidate "-1 -3 -5 -6 0") = "-1 None" ]]
    [[ $(candidate "-6 -4 -4 -3 1") = "-3 1" ]]
    [[ $(candidate "-6 -4 -4 -3 -100 1") = "-3 1" ]]
}

run_test