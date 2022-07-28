<?php
// Given an array of integers, sort the integers that are between 1 and 9 inclusive,
// reverse the resulting array, and then replace each digit by its corresponding name from
// "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
// For example:
// arr = [2, 1, 1, 4, 5, 8, 2, 3]   
// -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
// -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
// return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
// If the array is empty, return an empty array:
// arr = []
// return []
// If the array has any strange number ignore it:
// arr = [1, -1 , 55] 
// -> sort arr -> [-1, 1, 55]
// -> reverse arr -> [55, 1, -1]
// return = ['One']
function by_length($arr) {
    $arr = array_filter($arr, function($item) {
        return $item > 0 && $item < 10;
    });
    sort($arr);
    $arr = array_reverse($arr);
    $arr = array_map(function($item) {
        switch ($item) {
            case 1:
                return 'One';
            case 2:
                return 'Two';
            case 3:
                return 'Three';
            case 4:
                return 'Four';
            case 5:
                return 'Five';
            case 6:
                return 'Six';
            case 7:
                return 'Seven';
            case 8:
                return 'Eight';
            case 9:
                return 'Nine';
        }
    }, $arr);
    return $arr;
}

$arr = [2, 1, 1, 4, 5, 8, 2, 3];
echo json_encode(by_length($arr));

function candidate(...$args) {
    return by_length(...$args);
}

function test(): void {
    if (candidate(array(2, 1, 1, 4, 5, 8, 2, 3)) !== array("Eight", "Five", "Four", "Three", "Two", "Two", "One", "One")) { throw new Exception("Test failed!"); }
    if (candidate(array()) !== array()) { throw new Exception("Test failed!"); }
    if (candidate(array(1, -1, 55)) !== array("One")) { throw new Exception("Test failed!"); }
    if (candidate(array(1, -1, 3, 2)) !== array("Three", "Two", "One")) { throw new Exception("Test failed!"); }
    if (candidate(array(9, 4, 8)) !== array("Nine", "Eight", "Four")) { throw new Exception("Test failed!"); }
}

test();