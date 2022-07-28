#!/bin/bash
# You're a hungry rabbit, and you already have eaten a certain number of carrots,
# but now you need to eat more carrots to complete the day's meals.
# you should return an array of [ total number of eaten carrots after your meals,
# the number of carrots left after your meals ]
# if there are not enough remaining carrots, you will eat all remaining carrots, but will still be hungry.
# Example:
# * eat(5, 6, 10) -> [11, 4]
# * eat(4, 8, 9) -> [12, 1]
# * eat(1, 10, 10) -> [11, 0]
# * eat(2, 11, 5) -> [7, 0]
# Variables:
# @number : integer
# the number of carrots that you have eaten.
# @need : integer
# the number of carrots that you need to eat.
# @remaining : integer
# the number of remaining carrots thet exist in stock
# Constrain:
# * 0 <= number <= 1000
# * 0 <= need <= 1000
# * 0 <= remaining <= 1000
# Have fun :)
eat() {
  number=$1
  need=$2
  remaining=$3
  if [ $remaining -ge $need ]; then
    echo "$((number + need)) $((remaining - need))"
  else
    echo "$((number + remaining)) 0"
  fi

}

candidate() {
    local res=$(eat "$@")
    echo $res
}

test() {
    declare -a x1=(11 4)
        x0=$(candidate 5 6 10)
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=(12 1)
        x2=$(candidate 4 8 9)
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=(11 0)
        x4=$(candidate 1 10 10)
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x7=(7 0)
        x6=$(candidate 2 11 5)
    assert_equals "${x7[*]}" "${x6[*]}"

    declare -a x9=(9 2)
        x8=$(candidate 4 5 7)
    assert_equals "${x9[*]}" "${x8[*]}"

    declare -a x11=(5 0)
        x10=$(candidate 4 5 1)
    assert_equals "${x11[*]}" "${x10[*]}"

}