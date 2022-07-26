<?php
// Input are two strings a and b consisting only of 1s and 0s.
// Perform binary XOR on these inputs and return result also as a string.
// >>> string_xor('010', '110')
// '100'
function string_xor($a, $b) {
    $result = '';
    for ($i = 0; $i < strlen($a); $i++) {
        $result .= ($a[$i] == $b[$i]) ? '0' : '1';
    }
    return $result;
}

$a = '010';
$b = '110';
echo string_xor($a, $b);

function candidate(...$args) {
    return string_xor(...$args);
}

function test(): void {
    if (candidate('111000', '101010') !== '010010') { throw new Exception("Test failed!"); }
    if (candidate('1', '1') !== '0') { throw new Exception("Test failed!"); }
    if (candidate('0101', '0000') !== '0101') { throw new Exception("Test failed!"); }
}

test();