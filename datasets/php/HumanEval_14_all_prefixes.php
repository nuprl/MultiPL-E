<?php
// Return list of all prefixes from shortest to longest of the input string
// >>> all_prefixes('abc')
// ['a', 'ab', 'abc']
function all_prefixes($string) {
    $prefixes = [];
    for ($i = 0; $i < strlen($string); $i++) {
        $prefixes[] = substr($string, 0, $i + 1);
    }
    return $prefixes;
}


function candidate(...$args) {
    return all_prefixes(...$args);
}

function test(): void {
    if (candidate('') !== array()) { throw new Exception("Test failed!"); }
    if (candidate('asdfgh') !== array('a', 'as', 'asd', 'asdf', 'asdfg', 'asdfgh')) { throw new Exception("Test failed!"); }
    if (candidate('WWW') !== array('W', 'WW', 'WWW')) { throw new Exception("Test failed!"); }
}

test();