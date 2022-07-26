<?php
// You are given a string representing a sentence,
// the sentence contains some words separated by a space,
// and you have to return a string that contains the words from the original sentence,
// whose lengths are prime numbers,
// the order of the words in the new string should be the same as the original one.
// Example 1:
// Input: sentence = "This is a test"
// Output: "is"
// Example 2:
// Input: sentence = "lets go for swimming"
// Output: "go for"
// Constraints:
// * 1 <= len(sentence) <= 100
// * sentence contains only letters
function words_in_sentence($sentence) {
    $words = explode(' ', $sentence);
    $prime_words = [];
    foreach ($words as $word) {
        if (is_prime(strlen($word))) {
            $prime_words[] = $word;
        }
    }
    return implode(' ', $prime_words);
}


function candidate(...$args) {
    return words_in_sentence(...$args);
}

function test(): void {
    if (candidate('This is a test') !== 'is') { throw new Exception("Test failed!"); }
    if (candidate('lets go for swimming') !== 'go for') { throw new Exception("Test failed!"); }
    if (candidate('there is no place available here') !== 'there is no place') { throw new Exception("Test failed!"); }
    if (candidate('Hi I am Hussein') !== 'Hi am Hussein') { throw new Exception("Test failed!"); }
    if (candidate('go for it') !== 'go for it') { throw new Exception("Test failed!"); }
    if (candidate('here') !== '') { throw new Exception("Test failed!"); }
    if (candidate('here is') !== 'is') { throw new Exception("Test failed!"); }
}

test();