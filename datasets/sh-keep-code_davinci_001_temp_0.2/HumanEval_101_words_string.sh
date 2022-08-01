#!/bin/bash
# You will be given a string of words separated by commas or spaces. Your task is
# to split the string into words and return an array of the words.
# For example:
# words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
# words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
#
# $1 is a string
words_string() {
echo 0

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