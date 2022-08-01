#!/bin/bash
# Find how many times a given substring can be found in the original string. Count overlaping cases.
# >>> how_many_times('', 'a')
# 0
# >>> how_many_times('aaa', 'a')
# 3
# >>> how_many_times('aaaa', 'aa')
# 3
#
# $1 is a string
# $2 is a string
how_many_times() {
    local str="$1"
    local substr="$2"
    local count=0
    local i=0
    while [ $i -lt ${#str} ]; do
        local j=0
        while [ $j -lt ${#substr} ]; do
            if [ "${str:$i:${#substr}}" == "$substr" ]; then
                ((count++))
            fi
            ((j++))
        done
        ((i++))
    done
    echo $count

}

candidate() {
    how_many_times "$@"
}

run_test() {
    [[ $(candidate "" x) = 0 ]]
    [[ $(candidate xyxyxyx x) = 4 ]]
    [[ $(candidate cacacacac cac) = 4 ]]
    [[ $(candidate "john doe" john) = 1 ]]
}

run_test