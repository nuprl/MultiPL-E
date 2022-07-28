<?php
// Return a string containing space-delimited numbers starting from 0 upto n inclusive.
// >>> string_sequence(0)
// '0'
// >>> string_sequence(5)
// '0 1 2 3 4 5'
function string_sequence($n) {
    $result = '';
    for ($i = 0; $i <= $n; $i++) {
        $result .= $i . ' ';
    }
    return $result;
}


function candidate(...$args) {
    return string_sequence(...$args);
}

function test(): void {
    if (candidate(0) !== "0") { throw new Exception("Test failed!"); }
    if (candidate(3) !== "0 1 2 3") { throw new Exception("Test failed!"); }
    if (candidate(10) !== "0 1 2 3 4 5 6 7 8 9 10") { throw new Exception("Test failed!"); }
}

test();