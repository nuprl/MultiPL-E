#!/bin/bash
# Filter an input list of strings only for ones that contain given substring
# >>> filter_by_substring([], 'a')
# []
# >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
# ['abc', 'bacd', 'array']
filter_by_substring() {
    local list="$1"
    local substring="$2"
    local filtered_list=()
    for item in ${list[@]}; do
        if [[ "$item" == *"$substring"* ]]; then
            filtered_list+=("$item")
        fi
    done
    echo "${filtered_list[@]}"

}

candidate() {
    local res=$(filter_by_substring "$@")
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

    declare -a x8=('xxx' 'aaaxxy' 'xxxAAA' 'xxx')
    declare -a x6=('xxx' 'asd' 'aaaxxy' 'john doe' 'xxxAAA' 'xxx')
    x7=$(candidate "${x6[*]}" 'xx')
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=('grunt' 'prune')
    declare -a x9=('grunt' 'trumpet' 'prune' 'gruesome')
    x10=$(candidate "${x9[*]}" 'run')
    assert_equals "${x11[*]}" "${x10[*]}"

}