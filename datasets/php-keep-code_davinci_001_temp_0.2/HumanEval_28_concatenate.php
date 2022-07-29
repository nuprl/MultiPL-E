<?php
// Concatenate list of strings into a single string
// >>> concatenate([])
// ''
// >>> concatenate(['a', 'b', 'c'])
// 'abc'
function concatenate($strings) {
    $result = '';
    foreach ($strings as $string) {
        $result .= $string;
    }
    return $result;
}


function candidate(...$args) {
    return concatenate(...$args);
}

function test(): void {
    if (candidate(array()) !== "") { throw new Exception("Test failed!"); }
    if (candidate(array("x", "y", "z")) !== "xyz") { throw new Exception("Test failed!"); }
    if (candidate(array("x", "y", "z", "w", "k")) !== "xyzwk") { throw new Exception("Test failed!"); }
}

test();