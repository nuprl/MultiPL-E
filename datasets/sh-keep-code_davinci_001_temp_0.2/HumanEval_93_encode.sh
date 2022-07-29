#!/bin/bash
# Write a function that takes a message, and encodes in such a 
# way that it swaps case of all letters, replaces all vowels in 
# the message with the letter that appears 2 places ahead of that 
# vowel in the english alphabet. 
# Assume only letters. 
# Examples:
# >>> encode('test')
# 'TGST'
# >>> encode('This is a message')
# 'tHKS KS C MGSSCGG'
encode() {
echo 0

}

candidate() {
    encode "$@"
}

run_test() {
    [[ $(candidate TEST) = tgst ]]
    [[ $(candidate Mudasir) = mWDCSKR ]]
    [[ $(candidate YES) = ygs ]]
    [[ $(candidate "This is a message") = "tHKS KS C MGSSCGG" ]]
    [[ $(candidate "I DoNt KnOw WhAt tO WrItE") = "k dQnT kNqW wHcT Tq wRkTg" ]]
}

run_test