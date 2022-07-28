<?php
// Given a string representing a space separated lowercase letters, return a dictionary
// of the letter with the most repetition and containing the corresponding count.
// If several letters have the same occurrence, return all of them.
// Example:
// histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
// histogram('a b b a') == {'a': 2, 'b': 2}
// histogram('a b c a b') == {'a': 2, 'b': 2}
// histogram('b b b b a') == {'b': 4}
// histogram('') == {}
function histogram($test) {
    $arr = explode(' ', $test);
    $arr = array_count_values($arr);
    arsort($arr);
    $arr = array_keys($arr);
    return array_combine($arr, $arr);
}

$test = 'a b c';
$test = 'a b b a';
$test = 'a b c a b';
$test = 'b b b b a';
$test = '';

$result = histogram($test);
print_r($result);

function candidate(...$args) {
    return histogram(...$args);
}

function test(): void {
    if (candidate("a b b a") !== array("a" => 2, "b" => 2)) { throw new Exception("Test failed!"); }
    if (candidate("a b c a b") !== array("a" => 2, "b" => 2)) { throw new Exception("Test failed!"); }
    if (candidate("a b c d g") !== array("a" => 1, "b" => 1, "c" => 1, "d" => 1, "g" => 1)) { throw new Exception("Test failed!"); }
    if (candidate("r t g") !== array("r" => 1, "t" => 1, "g" => 1)) { throw new Exception("Test failed!"); }
    if (candidate("b b b b a") !== array("b" => 4)) { throw new Exception("Test failed!"); }
    if (candidate("r t g") !== array("r" => 1, "t" => 1, "g" => 1)) { throw new Exception("Test failed!"); }
    if (candidate("") !== array()) { throw new Exception("Test failed!"); }
    if (candidate("a") !== array("a" => 1)) { throw new Exception("Test failed!"); }
}

test();