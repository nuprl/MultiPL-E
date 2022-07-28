#!/bin/bash
# Return list of all prefixes from shortest to longest of the input string
# >>> all_prefixes('abc')
# ['a', 'ab', 'abc']
all_prefixes() {
    local str="$1"
    local prefixes=()
    local prefix=""
    for (( i=0; i<${#str}; i++ )); do
        prefix="${str:0:$i}"
        if [[ "$prefix" != "${prefixes[*]}" ]]; then
            prefixes+=("$prefix")
        fi
    done
    echo "${prefixes[@]}"

}

candidate() {
    local res=$(all_prefixes "$@")
    echo $res
}

test() {
    declare -a x1=()
        x0=$(candidate '')
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=('a' 'as' 'asd' 'asdf' 'asdfg' 'asdfgh')
        x2=$(candidate 'asdfgh')
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=('W' 'WW' 'WWW')
        x4=$(candidate 'WWW')
    assert_equals "${x5[*]}" "${x4[*]}"

}