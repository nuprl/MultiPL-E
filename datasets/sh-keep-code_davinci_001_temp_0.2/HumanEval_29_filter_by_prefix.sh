#!/bin/bash
# Filter an input list of strings only for ones that start with a given prefix.
# >>> filter_by_prefix([], 'a')
# []
# >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
# ['abc', 'array']
filter_by_prefix() {
    local prefix="$1"
    shift
    local list=("$@")
    local filtered=()
    for item in "${list[@]}"; do
        if [[ "$item" == "$prefix"* ]]; then
            filtered+=("$item")
        fi
    done
    echo "${filtered[@]}"

}

candidate() {
    local res=$(filter_by_prefix "$@")
    echo $res
}

test() {
    declare -a x2=()
    declare -a x0=()
    x1=$(candidate "${x0[*]}" 'john')
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=('xxx' 'xxxAAA' 'xxx')
    declare -a x3=('xxx' 'asd' 'xxy' 'john doe' 'xxxAAA' 'xxx')
    x4=$(candidate "${x3[*]}" 'xxx')
    assert_equals "${x5[*]}" "${x4[*]}"

}