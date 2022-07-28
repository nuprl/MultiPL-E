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
    local count=0
    local sentence=$1
    local words=($(echo $sentence | tr '.' ' ' | tr '?' ' ' | tr '!' ' '))
    for word in ${words[@]}; do
        if [[ $word == "I" ]]; then
            count=$((count+1))
        fi
    done
    echo $count

}

candidate() {
    local res=$(is_bored "$@")
    echo $res
}

test() {
        x0=$(candidate 'Hello world')
    assert_equals 0 "${x0[*]}"

        x1=$(candidate 'Is the sky blue?')
    assert_equals 0 "${x1[*]}"

        x2=$(candidate 'I love It !')
    assert_equals 1 "${x2[*]}"

        x3=$(candidate 'bIt')
    assert_equals 0 "${x3[*]}"

        x4=$(candidate 'I feel good today. I will be productive. will kill It')
    assert_equals 2 "${x4[*]}"

        x5=$(candidate 'You and I are going for a walk')
    assert_equals 0 "${x5[*]}"

}