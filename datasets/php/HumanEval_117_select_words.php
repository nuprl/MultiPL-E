<?php
// Given a string s and a natural number n, you have been tasked to implement 
// a function that returns a list of all words from string s that contain exactly 
// n consonants, in order these words appear in the string s.
// If the string s is empty then the function should return an empty list.
// Note: you may assume the input string contains only letters and spaces.
// Examples:
// select_words("Mary had a little lamb", 4) ==> ["little"]
// select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
// select_words("simple white space", 2) ==> []
// select_words("Hello world", 4) ==> ["world"]
// select_words("Uncle sam", 3) ==> ["Uncle"]
function select_words($s, $n) {
    $words = explode(" ", $s);
    $result = [];
    foreach ($words as $word) {
        $count = 0;
        for ($i = 0; $i < strlen($word); $i++) {
            if (strtolower($word[$i]) !== "a" && strtolower($word[$i]) !== "e" && strtolower($word[$i]) !== "i" && strtolower($word[$i]) !== "o" && strtolower($word[$i]) !== "u") {
                $count++;
            }
        }
        if ($count === $n) {
            array_push($result, $word);
        }
    }
    return $result;
}

$s = "Mary had a little lamb";
$n = 4;
echo "select_words($s, $n) = " . implode(", ", select_words($s, $n));
echo "<br>";
$s = "Mary had a little lamb";
$n = 3;
echo "select_words($s, $n) = " . implode(", ", select_words($s, $n));
echo "<br>";
$s = "simple white space";
$n = 2;
echo "select_words($s, $n) = " . implode(", ", select_words($s, $n));
echo "<br>";
$s = "Hello world";
$n = 4;
echo "select_words($s, $n) = " . implode(", ", select_words($s, $n));
echo "<br>";
$s = "Uncle sam";
$n = 3;
echo "select_words($s, $n) = " . implode(", ", select_words($s, $n));
echo "<br>";
$s = "";
$n = 3;
echo "select_words($s, $n) = " . implode(", ", select_words($s, $n));
echo "<br>";
$s = "a";
$n = 1;


function candidate(...$args) {
    return select_words(...$args);
}

function test(): void {
    if (candidate('Mary had a little lamb', 4) !== array('little')) { throw new Exception("Test failed!"); }
    if (candidate('Mary had a little lamb', 3) !== array('Mary', 'lamb')) { throw new Exception("Test failed!"); }
    if (candidate('simple white space', 2) !== array()) { throw new Exception("Test failed!"); }
    if (candidate('Hello world', 4) !== array('world')) { throw new Exception("Test failed!"); }
    if (candidate('Uncle sam', 3) !== array('Uncle')) { throw new Exception("Test failed!"); }
    if (candidate('', 4) !== array()) { throw new Exception("Test failed!"); }
    if (candidate('a b c d e f', 1) !== array('b', 'c', 'd', 'f')) { throw new Exception("Test failed!"); }
}

test();