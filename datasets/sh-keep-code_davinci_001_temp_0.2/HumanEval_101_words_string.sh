#!/bin/bash
# You will be given a string of words separated by commas or spaces. Your task is
# to split the string into words and return an array of the words.
# For example:
# words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
# words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
#
# $1 is a string
words_string() {
    local words_array=()
    local words_string=$1
    local words_string_length=${#words_string}
    local word_start_index=0
    local word_end_index=0
    local word_length=0
    local word=""
    for ((i=0; i<$words_string_length; i++)); do
        if [[ ${words_string:$i:1} == "," || ${words_string:$i:1} == " " ]]; then
            word_end_index=$i
            word_length=${#word}
            if [[ $word_length -gt 0 ]]; then
                words_array+=("$word")
            fi
            word=""
            word_start_index=$i+1
        else
            word+="${words_string:$i:1}"
        fi
    done
    word_end_index=$i
    word_length=${#word}
    if [[ $word_length -gt 0 ]]; then
        words_array+=("$word")
    fi
    echo "${words_array[@]}"

}

candidate() {
    words_string "$@"
}

run_test() {
    [[ $(candidate "Hi, my name is John") = "Hi my name is John" ]]
    [[ $(candidate "One, two, three, four, five, six") = "One two three four five six" ]]
    [[ $(candidate "Hi, my name") = "Hi my name" ]]
    [[ $(candidate "One,, two, three, four, five, six,") = "One two three four five six" ]]
    [[ $(candidate "") = "" ]]
    [[ $(candidate "ahmed     , gamal") = "ahmed gamal" ]]
}

run_test