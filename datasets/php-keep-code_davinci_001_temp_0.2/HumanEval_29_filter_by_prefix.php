<?php
// Filter an input list of strings only for ones that start with a given prefix.
// >>> filter_by_prefix([], 'a')
// []
// >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
// ['abc', 'array']
function filter_by_prefix($strings, $prefix) {
    $result = [];
    foreach ($strings as $string) {
        if (substr($string, 0, strlen($prefix)) === $prefix) {
            $result[] = $string;
        }
    }
    return $result;
}


function candidate(...$args) {
    return filter_by_prefix(...$args);
}

function test(): void {
    if (candidate(array(), "john") !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array("xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"), "xxx") !== array("xxx", "xxxAAA", "xxx")) { throw new Exception("Test failed!"); }
}

test();