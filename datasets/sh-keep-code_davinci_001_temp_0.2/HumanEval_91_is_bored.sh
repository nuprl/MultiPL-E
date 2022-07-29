#!/bin/bash
# You'll be given a string of words, and your task is to count the number
# of boredoms. A boredom is a sentence that starts with the word "I".
# Sentences are delimited by '.', '?' or '!'.
# For example:
# >>> is_bored("Hello world")
# 0
# >>> is_bored("The sky is blue. The sun is shining. I love this weather")
# 1
is_bored() {
echo 0

}

candidate() {
    is_bored "$@"
}

run_test() {
    [[ $(candidate "Hello world") = 0 ]]
    [[ $(candidate "Is the sky blue?") = 0 ]]
    [[ $(candidate "I love It \!") = 1 ]]
    [[ $(candidate bIt) = 0 ]]
    [[ $(candidate "I feel good today. I will be productive. will kill It") = 2 ]]
    [[ $(candidate "You and I are going for a walk") = 0 ]]
}

run_test