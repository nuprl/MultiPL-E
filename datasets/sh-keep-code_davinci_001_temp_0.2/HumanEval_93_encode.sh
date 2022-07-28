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
	echo $1 | tr '[:lower:]' '[:upper:]' | sed -e 's/[AEIOU]/\0\0/g' | tr '[:upper:]' '[:lower:]' | sed -e 's/[AEIOU]/\0\0/g' | tr '[:lower:]' '[:upper:]' | sed -e 's/[AEIOU]/\0\0/g' | tr '[:upper:]' '[:lower:]' | sed -e 's/[AEIOU]/\0\0/g' | tr '[:lower:]' '[:upper:]' | sed -e 's/[AEIOU]/\0\0/g' | tr '[:upper:]' '[:lower:]' | sed -e 's/[AEIOU]/\0\0/g' | tr '[:lower:]' '[:upper:]' | sed -e 's/[AEIOU]/\0\0/g' | tr '[:upper:]' '[:lower:]' | sed -e 's/[AEIOU]/\0\0/g' | tr '[:lower:]' '[:upper:]' | sed -e 's/[AEIOU]/\0\0/g' | tr '[:upper:]' '[:lower:]' | sed -e 's/[AEIOU]/\0\0/g' | tr '[:lower:]' '[:upper:]' | sed -e 's/[AEIOU]/\0\0/g' | tr '[:upper:]' '[:lower:]' | sed -e 's/[AEIOU]/\0\0/g' | tr '[:lower:]' '[:upper:]' | sed -e 's/[AEIOU]/\0\0/g' | tr '[:upper:]' '[:lower:]' | sed -e 's/[AEIOU]/\0\0/g' | tr '[:lower:]' '[:upper:]' | sed -e 's/[AEIOU]/\0\0/g' | tr '[:upper:]' '[:lower:]' | sed -

}

candidate() {
    local res=$(encode "$@")
    echo $res
}

test() {
        x0=$(candidate 'TEST')
    assert_equals 'tgst' "${x0[*]}"

        x1=$(candidate 'Mudasir')
    assert_equals 'mWDCSKR' "${x1[*]}"

        x2=$(candidate 'YES')
    assert_equals 'ygs' "${x2[*]}"

        x3=$(candidate 'This is a message')
    assert_equals 'tHKS KS C MGSSCGG' "${x3[*]}"

        x4=$(candidate 'I DoNt KnOw WhAt tO WrItE')
    assert_equals 'k dQnT kNqW wHcT Tq wRkTg' "${x4[*]}"

}