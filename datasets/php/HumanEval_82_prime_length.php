<?php
// Write a function that takes a string and returns True if the string
// length is a prime number or False otherwise
// Examples
// prime_length('Hello') == True
// prime_length('abcdcba') == True
// prime_length('kittens') == True
// prime_length('orange') == False
function prime_length($string) {
    $length = strlen($string);
    if ($length == 1) {
        return false;
    }
    for ($i = 2; $i < $length; $i++) {
        if ($length % $i == 0) {
            return false;
        }
    }
    return true;
}

$string = 'Hello';
echo prime_length($string);

function candidate(...$args) {
    return prime_length(...$args);
}

function test(): void {
    if (candidate('Hello') !== true) { throw new Exception("Test failed!"); }
    if (candidate('abcdcba') !== true) { throw new Exception("Test failed!"); }
    if (candidate('kittens') !== true) { throw new Exception("Test failed!"); }
    if (candidate('orange') !== false) { throw new Exception("Test failed!"); }
    if (candidate('wow') !== true) { throw new Exception("Test failed!"); }
    if (candidate('world') !== true) { throw new Exception("Test failed!"); }
    if (candidate('MadaM') !== true) { throw new Exception("Test failed!"); }
    if (candidate('Wow') !== true) { throw new Exception("Test failed!"); }
    if (candidate('') !== false) { throw new Exception("Test failed!"); }
    if (candidate('HI') !== true) { throw new Exception("Test failed!"); }
    if (candidate('go') !== true) { throw new Exception("Test failed!"); }
    if (candidate('gogo') !== false) { throw new Exception("Test failed!"); }
    if (candidate('aaaaaaaaaaaaaaa') !== false) { throw new Exception("Test failed!"); }
    if (candidate('Madam') !== true) { throw new Exception("Test failed!"); }
    if (candidate('M') !== false) { throw new Exception("Test failed!"); }
    if (candidate('0') !== false) { throw new Exception("Test failed!"); }
}

test();