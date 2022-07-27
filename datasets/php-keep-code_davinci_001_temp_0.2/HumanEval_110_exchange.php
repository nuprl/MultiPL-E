<?php
// In this problem, you will implement a function that takes two lists of numbers,
// and determines whether it is possible to perform an exchange of elements
// between them to make lst1 a list of only even numbers.
// There is no limit on the number of exchanged elements between lst1 and lst2.
// If it is possible to exchange elements between the lst1 and lst2 to make
// all the elements of lst1 to be even, return "YES".
// Otherwise, return "NO".
// For example:
// exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
// exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
// It is assumed that the input lists will be non-empty.
function exchange($lst1, $lst2) {
    $lst1 = array_map('intval', $lst1);
    $lst2 = array_map('intval', $lst2);
    $lst1 = array_filter($lst1, function($x) { return $x % 2 == 0; });
    $lst2 = array_filter($lst2, function($x) { return $x % 2 == 0; });
    if (count($lst1) == count($lst2)) {
        return "YES";
    } else {
        return "NO";
    }
}

$lst1 = array_map('intval', explode(',', readline()));
$lst2 = array_map('intval', explode(',', readline()));
echo exchange($lst1, $lst2);

function candidate(...$args) {
    return exchange(...$args);
}

function test(): void {
    if (candidate(array(1, 2, 3, 4), array(1, 2, 3, 4)) !== 'YES') { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 4), array(1, 5, 3, 4)) !== 'NO') { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 4), array(2, 1, 4, 3)) !== 'YES') { throw new Exception("Test failed!"); }
    if (candidate(array(5, 7, 3), array(2, 6, 4)) !== 'YES') { throw new Exception("Test failed!"); }
    if (candidate(array(5, 7, 3), array(2, 6, 3)) !== 'NO') { throw new Exception("Test failed!"); }
    if (candidate(array(3, 2, 6, 1, 8, 9), array(3, 5, 5, 1, 1, 1)) !== 'NO') { throw new Exception("Test failed!"); }
    if (candidate(array(100, 200), array(200, 200)) !== 'YES') { throw new Exception("Test failed!"); }
}

test();