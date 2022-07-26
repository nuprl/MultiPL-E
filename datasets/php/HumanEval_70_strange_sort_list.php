<?php
// Given list of integers, return list in strange order.
// Strange sorting, is when you start with the minimum value,
// then maximum of the remaining integers, then minimum and so on.
// Examples:
// strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
// strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
// strange_sort_list([]) == []
function strange_sort_list($lst) {
    $res = [];
    $lst = array_values($lst);
    $min = min($lst);
    $max = max($lst);
    $i = 0;
    while (count($res) < count($lst)) {
        $res[] = $min;
        $res[] = $max;
        $min = min(array_slice($lst, $i));
        $max = max(array_slice($lst, $i));
        $i++;
    }
    return $res;
}

$lst = [1, 2, 3, 4];
$res = strange_sort_list($lst);
print_r($res);

function candidate(...$args) {
    return strange_sort_list(...$args);
}

function test(): void {
    if (candidate(array(1, 2, 3, 4)) !== array(1, 4, 2, 3)) { throw new Exception("Test failed!"); }
    if (candidate(array(5, 6, 7, 8, 9)) !== array(5, 9, 6, 8, 7)) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 4, 5)) !== array(1, 5, 2, 4, 3)) { throw new Exception("Test failed!"); }
    if (candidate(array(5, 6, 7, 8, 9, 1)) !== array(1, 9, 5, 8, 6, 7)) { throw new Exception("Test failed!"); }
    if (candidate(array(5, 5, 5, 5)) !== array(5, 5, 5, 5)) { throw new Exception("Test failed!"); }
    if (candidate(array()) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3, 4, 5, 6, 7, 8)) !== array(1, 8, 2, 7, 3, 6, 4, 5)) { throw new Exception("Test failed!"); }
    if (candidate(array(0, 2, 2, 2, 5, 5, -5, -5)) !== array(-5, 5, -5, 5, 0, 2, 2, 2)) { throw new Exception("Test failed!"); }
    if (candidate(array(111111)) !== array(111111)) { throw new Exception("Test failed!"); }
}

test();