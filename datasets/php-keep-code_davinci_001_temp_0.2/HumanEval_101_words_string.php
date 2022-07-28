<?php
// You will be given a string of words separated by commas or spaces. Your task is
// to split the string into words and return an array of the words.
// For example:
// words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
// words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
function words_string($s) {
    $s = explode(',', $s);
    $s = array_map('trim', $s);
    return $s;
}


function candidate(...$args) {
    return words_string(...$args);
}

function test(): void {
    if (candidate("Hi, my name is John") !== array("Hi", "my", "name", "is", "John")) { throw new Exception("Test failed!"); }
    if (candidate("One, two, three, four, five, six") !== array("One", "two", "three", "four", "five", "six")) { throw new Exception("Test failed!"); }
    if (candidate("Hi, my name") !== array("Hi", "my", "name")) { throw new Exception("Test failed!"); }
    if (candidate("One,, two, three, four, five, six,") !== array("One", "two", "three", "four", "five", "six")) { throw new Exception("Test failed!"); }
    if (candidate("") !== array()) { throw new Exception("Test failed!"); }
    if (candidate("ahmed     , gamal") !== array("ahmed", "gamal")) { throw new Exception("Test failed!"); }
}

test();