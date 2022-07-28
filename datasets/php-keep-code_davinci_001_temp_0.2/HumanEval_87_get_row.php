<?php
// You are given a 2 dimensional data, as a nested lists,
// which is similar to matrix, however, unlike matrices,
// each row may contain a different number of columns.
// Given lst, and integer x, find integers x in the list,
// and return list of tuples, [(x1, y1), (x2, y2) ...] such that
// each tuple is a coordinate - (row, columns), starting with 0.
// Sort coordinates initially by rows in ascending order.
// Also, sort coordinates of the row by columns in descending order.
// Examples:
// get_row([
// [1,2,3,4,5,6],
// [1,2,3,4,1,6],
// [1,2,3,4,5,1]
// ], 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
// get_row([], 1) == []
// get_row([[], [1], [1, 2, 3]], 3) == [(2, 2)]
function get_row($lst, $x) {
    $result = [];
    $row = 0;
    $column = 0;
    $lst = array_reverse($lst);
    foreach ($lst as $item) {
        if (in_array($x, $item)) {
            $column = array_search($x, $item);
            $result[] = [$row, $column];
        }
        $row++;
    }
    $result = array_reverse($result);
    return $result;
}

$lst = [[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 1, 6], [1, 2, 3, 4, 5, 1]];
$x = 1;
$result = get_row($lst, $x);
print_r($result);

function candidate(...$args) {
    return get_row(...$args);
}

function test(): void {
    if (candidate(array(array(1, 2, 3, 4, 5, 6), array(1, 2, 3, 4, 1, 6), array(1, 2, 3, 4, 5, 1)), 1) !== array(array(0, 0), array(1, 4), array(1, 0), array(2, 5), array(2, 0))) { throw new Exception("Test failed!"); }
    if (candidate(array(array(1, 2, 3, 4, 5, 6), array(1, 2, 3, 4, 5, 6), array(1, 2, 3, 4, 5, 6), array(1, 2, 3, 4, 5, 6), array(1, 2, 3, 4, 5, 6), array(1, 2, 3, 4, 5, 6)), 2) !== array(array(0, 1), array(1, 1), array(2, 1), array(3, 1), array(4, 1), array(5, 1))) { throw new Exception("Test failed!"); }
    if (candidate(array(array(1, 2, 3, 4, 5, 6), array(1, 2, 3, 4, 5, 6), array(1, 1, 3, 4, 5, 6), array(1, 2, 1, 4, 5, 6), array(1, 2, 3, 1, 5, 6), array(1, 2, 3, 4, 1, 6), array(1, 2, 3, 4, 5, 1)), 1) !== array(array(0, 0), array(1, 0), array(2, 1), array(2, 0), array(3, 2), array(3, 0), array(4, 3), array(4, 0), array(5, 4), array(5, 0), array(6, 5), array(6, 0))) { throw new Exception("Test failed!"); }
    if (candidate(array(), 1) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array(array(1)), 2) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array(array(), array(1), array(1, 2, 3)), 3) !== array(array(2, 2))) { throw new Exception("Test failed!"); }
}

test();