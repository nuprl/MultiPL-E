<?php
// Write a function that accepts a list of strings.
// The list contains different words. Return the word with maximum number
// of unique characters. If multiple strings have maximum number of unique
// characters, return the one which comes first in lexicographical order.
// find_max(["name", "of", "string"]) == "string"
// find_max(["name", "enam", "game"]) == "enam"
// find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
function find_max($words) {
    $max = 0;
    $max_word = "";
    foreach ($words as $word) {
        $unique_chars = array_count_values(str_split($word));
        $unique_chars_count = count($unique_chars);
        if ($unique_chars_count > $max) {
            $max = $unique_chars_count;
            $max_word = $word;
        }
    }
    return $max_word;
}

$words = ["name", "of", "string"];
echo find_max($words);

function candidate(...$args) {
    return find_max(...$args);
}

function test(): void {
    if (candidate(array('name', 'of', 'string')) !== 'string') { throw new Exception("Test failed!"); }
    if (candidate(array('name', 'enam', 'game')) !== 'enam') { throw new Exception("Test failed!"); }
    if (candidate(array('aaaaaaa', 'bb', 'cc')) !== 'aaaaaaa') { throw new Exception("Test failed!"); }
    if (candidate(array('abc', 'cba')) !== 'abc') { throw new Exception("Test failed!"); }
    if (candidate(array('play', 'this', 'game', 'of', 'footbott')) !== 'footbott') { throw new Exception("Test failed!"); }
    if (candidate(array('we', 'are', 'gonna', 'rock')) !== 'gonna') { throw new Exception("Test failed!"); }
    if (candidate(array('we', 'are', 'a', 'mad', 'nation')) !== 'nation') { throw new Exception("Test failed!"); }
    if (candidate(array('this', 'is', 'a', 'prrk')) !== 'this') { throw new Exception("Test failed!"); }
    if (candidate(array('b')) !== 'b') { throw new Exception("Test failed!"); }
    if (candidate(array('play', 'play', 'play')) !== 'play') { throw new Exception("Test failed!"); }
}

test();