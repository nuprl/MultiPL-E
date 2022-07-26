<?php
// Write a function vowels_count which takes a string representing
// a word as input and returns the number of vowels in the string.
// Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
// vowel, but only when it is at the end of the given word.
// Example:
// >>> vowels_count("abcde")
// 2
// >>> vowels_count("ACEDY")
// 3
function vowels_count($s) {
    $vowels = ['a', 'e', 'i', 'o', 'u'];
    $count = 0;
    for ($i = 0; $i < strlen($s); $i++) {
        if (in_array($s[$i], $vowels)) {
            $count++;
        }
    }
    return $count;
}

$s = 'ACEDY';
echo vowels_count($s);

function candidate(...$args) {
    return vowels_count(...$args);
}

function test(): void {
    if (candidate('abcde') !== 2) { throw new Exception("Test failed!"); }
    if (candidate('Alone') !== 3) { throw new Exception("Test failed!"); }
    if (candidate('key') !== 2) { throw new Exception("Test failed!"); }
    if (candidate('bye') !== 1) { throw new Exception("Test failed!"); }
    if (candidate('keY') !== 2) { throw new Exception("Test failed!"); }
    if (candidate('bYe') !== 1) { throw new Exception("Test failed!"); }
    if (candidate('ACEDY') !== 3) { throw new Exception("Test failed!"); }
}

test();