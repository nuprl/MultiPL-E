<?php
// Out of list of strings, return the longest one. Return the first one in case of multiple
// strings of the same length. Return None in case the input list is empty.
// >>> longest([])
// >>> longest(['a', 'b', 'c'])
// 'a'
// >>> longest(['a', 'bb', 'ccc'])
// 'ccc'
function longest($strings) {
    $longest = null;
    foreach ($strings as $string) {
        if ($longest === null || strlen($string) > strlen($longest)) {
            $longest = $string;
        }
    }
    return $longest;
}


function candidate(...$args) {
    return longest(...$args);
}

function test(): void {
    if (candidate(array()) !== null) { throw new Exception("Test failed!"); }
    if (candidate(array('x', 'y', 'z')) !== 'x') { throw new Exception("Test failed!"); }
    if (candidate(array('x', 'yyy', 'zzzz', 'www', 'kkkk', 'abc')) !== 'zzzz') { throw new Exception("Test failed!"); }
}

test();