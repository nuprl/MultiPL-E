#!/bin/bash
# In this task, you will be given a string that represents a number of apples and oranges 
# that are distributed in a basket of fruit this basket contains 
# apples, oranges, and mango fruits. Given the string that represents the total number of 
# the oranges and apples and an integer that represent the total number of the fruits 
# in the basket return the number of the mango fruits in the basket.
# for examble:
# fruit_distribution("5 apples and 6 oranges", 19) ->19 - 5 - 6 = 8
# fruit_distribution("0 apples and 1 oranges",3) -> 3 - 0 - 1 = 2
# fruit_distribution("2 apples and 3 oranges", 100) -> 100 - 2 - 3 = 95
# fruit_distribution("100 apples and 1 oranges",120) -> 120 - 100 - 1 = 19
fruit_distribution() {
  local num_of_apples=$(echo $1 | grep -o -E '\d+ apples' | grep -o -E '[0-9]+')
  local num_of_oranges=$(echo $1 | grep -o -E '\d+ oranges' | grep -o -E '[0-9]+')
  local total_fruits=$2
  local num_of_mangoes=$((total_fruits - num_of_apples - num_of_oranges))
  echo $num_of_mangoes

}

candidate() {
    local res=$(fruit_distribution "$@")
    echo $res
}

test() {
        x0=$(candidate "5 apples and 6 oranges" 19)
    assert_equals 8 "${x0[*]}"

        x1=$(candidate "5 apples and 6 oranges" 21)
    assert_equals 10 "${x1[*]}"

        x2=$(candidate "0 apples and 1 oranges" 3)
    assert_equals 2 "${x2[*]}"

        x3=$(candidate "1 apples and 0 oranges" 3)
    assert_equals 2 "${x3[*]}"

        x4=$(candidate "2 apples and 3 oranges" 100)
    assert_equals 95 "${x4[*]}"

        x5=$(candidate "2 apples and 3 oranges" 5)
    assert_equals 0 "${x5[*]}"

        x6=$(candidate "1 apples and 100 oranges" 120)
    assert_equals 19 "${x6[*]}"

}