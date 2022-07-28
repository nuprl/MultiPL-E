#!/bin/bash
# You will be given a string of words separated by commas or spaces. Your task is
# to split the string into words and return an array of the words.
# For example:
# words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
# words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
words_string() {
  local words=$(echo "$1" | tr -s ' ' '\n')
  local result=()
  for word in $words; do
    result+=("$word")
  done
  echo "${result[@]}"

}

candidate() {
    local res=$(words_string "$@")
    echo $res
}

test() {
    declare -a x1=("Hi" "my" "name" "is" "John")
        x0=$(candidate "Hi, my name is John")
    assert_equals "${x1[*]}" "${x0[*]}"

    declare -a x3=("One" "two" "three" "four" "five" "six")
        x2=$(candidate "One, two, three, four, five, six")
    assert_equals "${x3[*]}" "${x2[*]}"

    declare -a x5=("Hi" "my" "name")
        x4=$(candidate "Hi, my name")
    assert_equals "${x5[*]}" "${x4[*]}"

    declare -a x7=("One" "two" "three" "four" "five" "six")
        x6=$(candidate "One,, two, three, four, five, six,")
    assert_equals "${x7[*]}" "${x6[*]}"

    declare -a x9=()
        x8=$(candidate "")
    assert_equals "${x9[*]}" "${x8[*]}"

    declare -a x11=("ahmed" "gamal")
        x10=$(candidate "ahmed     , gamal")
    assert_equals "${x11[*]}" "${x10[*]}"

}