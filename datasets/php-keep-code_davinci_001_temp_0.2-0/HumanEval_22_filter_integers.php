<?php
// Filter given list of any python values only for integers
// >>> filter_integers(['a', 3.14, 5])
// [5]
// >>> filter_integers([1, 2, 3, 'abc', {}, []])
// [1, 2, 3]
function filter_integers($values) {
    $result = [];
    foreach ($values as $value) {
        if (is_int($value)) {
            $result[] = $value;
        }
    }
    return $result;
}


function candidate(...$args) {
    return filter_integers(...$args);
}

function test(): void {
    if (candidate(array()) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array(4, array(), array(), 23.2, 9, "adasd")) !== array(4, 9)) { throw new Exception("Test failed!"); }
    if (candidate(array(3, "c", 3, 3, "a", "b")) !== array(3, 3, 3)) { throw new Exception("Test failed!"); }
}

test();