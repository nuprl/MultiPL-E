<?php
// You will be given a number in decimal form and your task is to convert it to
// binary format. The function should return a string, with each character representing a binary
// number. Each character in the string will be '0' or '1'.
// There will be an extra couple of characters 'db' at the beginning and at the end of the string.
// The extra characters are there to help with the format.
// Examples:
// decimal_to_binary(15)   # returns "db1111db"
// decimal_to_binary(32)   # returns "db100000db"
function decimal_to_binary($decimal) {
    $binary = decbin($decimal);
    $binary = str_pad($binary, 32, '0', STR_PAD_LEFT);
    return 'db'.$binary.'db';
}

$decimal = 15;
echo decimal_to_binary($decimal);

function candidate(...$args) {
    return decimal_to_binary(...$args);
}

function test(): void {
    if (candidate(0) !== 'db0db') { throw new Exception("Test failed!"); }
    if (candidate(32) !== 'db100000db') { throw new Exception("Test failed!"); }
    if (candidate(103) !== 'db1100111db') { throw new Exception("Test failed!"); }
    if (candidate(15) !== 'db1111db') { throw new Exception("Test failed!"); }
}

test();