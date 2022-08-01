#!/bin/bash
# Return sorted unique common elements for two lists.
# >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
# [1, 5, 653]
# >>> common([5, 3, 2, 8], [3, 2])
# [2, 3]
#
# $1 is a space-separated list
# $2 is a space-separated list
common() {
    local -a a=($1)
    local -a b=($2)
    local -a c=()
    for i in "${a[@]}"; do
        for j in "${b[@]}"; do
            if [[ "$i" == "$j" ]]; then
                c+=("$i")
            fi
        done
    done
    echo "${c[@]}" | tr ' ' '\n' | sort -u

}

candidate() {
    common "$@"
}

run_test() {
    [[ $(candidate "1 4 3 34 653 2 5" "5 7 1 5 9 653 121") = "1 5 653" ]]
    [[ $(candidate "5 3 2 8" "3 2") = "2 3" ]]
    [[ $(candidate "4 3 2 8" "3 2 4") = "2 3 4" ]]
    [[ $(candidate "4 3 2 8" "") = "" ]]
}

run_test