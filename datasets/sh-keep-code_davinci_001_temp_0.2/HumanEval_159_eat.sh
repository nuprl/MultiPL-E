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
#
# $1 is an integer
# $2 is an integer
# $3 is an integer
eat() {
echo 0

}

candidate() {
    eat "$@"
}

run_test() {
    [[ $(candidate 5 6 10) = "11 4" ]]
    [[ $(candidate 4 8 9) = "12 1" ]]
    [[ $(candidate 1 10 10) = "11 0" ]]
    [[ $(candidate 2 11 5) = "7 0" ]]
    [[ $(candidate 4 5 7) = "9 2" ]]
    [[ $(candidate 4 5 1) = "5 0" ]]
}

run_test