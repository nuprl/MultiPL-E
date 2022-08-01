#!/bin/bash
# Input to this function is a string representing musical notes in a special ASCII format.
# Your task is to parse this string and return list of integers corresponding to how many beats does each
# not last.
# Here is a legend:
# 'o' - whole note, lasts four beats
# 'o|' - half note, lasts two beats
# '.|' - quater note, lasts one beat
# >>> parse_music('o o| .| o| o| .| .| .| .| o o')
# [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
#
# $1 is a string
parse_music() {
    local beats=()
    local beat=0
    for (( i=0; i<${#1}; i++ )); do
        case "${1:$i:1}" in
            "o")
                beat=4
                ;;
            "o|")
                beat=2
                ;;
            ".|")
                beat=1
                ;;
        esac
        beats+=($beat)
    done
    echo "${beats[@]}"

}

candidate() {
    parse_music "$@"
}

set -e
run_test() {
    [[ $(candidate "") = "" ]]
    [[ $(candidate "o o o o") = "4 4 4 4" ]]
    [[ $(candidate ".| .| .| .|") = "1 1 1 1" ]]
    [[ $(candidate "o| o| .| .| o o o o") = "2 2 1 1 4 4 4 4" ]]
    [[ $(candidate "o| .| o| .| o o| o o|") = "2 1 2 1 4 2 4 2" ]]
}

run_test