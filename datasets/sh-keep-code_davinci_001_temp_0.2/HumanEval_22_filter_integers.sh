#!/bin/bash
# Filter given list of any python values only for integers
# >>> filter_integers(['a', 3.14, 5])
# [5]
# >>> filter_integers([1, 2, 3, 'abc', {}, []])
# [1, 2, 3]
filter_integers() {
    local -a result
    for value in "$@"; do
        if [[ "$value" =~ ^-?[0-9]+$ ]]; then
            result+=("$value")
        fi
    done
    echo "${result[@]}"

}

candidate() {
    local res=$(filter_integers "$@")
    echo $res
}

test() {
    declare -a x2=()
    declare -a x0=()
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x7=(4 9)
    declare -a x5=(4 declare -A x3=() declare -a x4=() 23.2 9 'adasd')
    x6=$(candidate "${x5[*]}")
    assert_equals "${x7[*]}" "${x6[*]}"

    declare -a x10=(3 3 3)
    declare -a x8=(3 'c' 3 3 'a' 'b')
    x9=$(candidate "${x8[*]}")
    assert_equals "${x10[*]}" "${x9[*]}"

}