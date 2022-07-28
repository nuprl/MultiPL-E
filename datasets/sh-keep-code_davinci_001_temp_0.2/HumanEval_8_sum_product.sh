#!/bin/bash
# For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
# Empty sum should be equal to 0 and empty product should be equal to 1.
# >>> sum_product([])
# (0, 1)
# >>> sum_product([1, 2, 3, 4])
# (10, 24)
sum_product() {
    if [ $# -eq 0 ]; then
        echo "0 1"
    else
        local sum=0
        local product=1
        for num in $@; do
            sum=$((sum + num))
            product=$((product * num))
        done
        echo "$sum $product"
    fi

}

candidate() {
    local res=$(sum_product "$@")
    echo $res
}

test() {
    declare -a x2=(0 1)
    declare -a x0=()
    x1=$(candidate "${x0[*]}")
    assert_equals "${x2[*]}" "${x1[*]}"

    declare -a x5=(3 1)
    declare -a x3=(1 1 1)
    x4=$(candidate "${x3[*]}")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x8=(100 0)
    declare -a x6=(100 0)
    x7=$(candidate "${x6[*]}")
    assert_equals "${x8[*]}" "${x7[*]}"

    declare -a x11=(15 105)
    declare -a x9=(3 5 7)
    x10=$(candidate "${x9[*]}")
    assert_equals "${x11[*]}" "${x10[*]}"

    declare -a x14=(10 10)
    declare -a x12=(10)
    x13=$(candidate "${x12[*]}")
    assert_equals "${x14[*]}" "${x13[*]}"

}