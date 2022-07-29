<?php
// Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
// should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
// alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
// Examples
// split_words("Hello world!") ➞ ["Hello", "world!"]
// split_words("Hello,world!") ➞ ["Hello", "world!"]
// split_words("abcdef") == 3
function split_words($txt) {
    $txt = str_replace(',', ' ', $txt);
    $txt = str_replace(' ', '', $txt);
    $txt = str_split($txt);
    $odd = 0;
    $even = 0;
    foreach ($txt as $key => $value) {
        if ($key % 2 == 0) {
            $even += $value;
        } else {
            $odd += $value;
        }
    }
    return $even - $odd;
}

$txt = "Hello world!";
echo split_words($txt);

function candidate(...$args) {
    return split_words(...$args);
}

function test(): void {
    if (candidate("Hello world!") !== array("Hello", "world!")) { throw new Exception("Test failed!"); }
    if (candidate("Hello,world!") !== array("Hello", "world!")) { throw new Exception("Test failed!"); }
    if (candidate("Hello world,!") !== array("Hello", "world,!")) { throw new Exception("Test failed!"); }
    if (candidate("Hello,Hello,world !") !== array("Hello,Hello,world", "!")) { throw new Exception("Test failed!"); }
    if (candidate("abcdef") !== 3) { throw new Exception("Test failed!"); }
    if (candidate("aaabb") !== 2) { throw new Exception("Test failed!"); }
    if (candidate("aaaBb") !== 1) { throw new Exception("Test failed!"); }
    if (candidate("") !== 0) { throw new Exception("Test failed!"); }
}

test();