<?php
// "
// This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a 
// multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not 
// change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. 
// Examples:
// For lst = [1,2,3] the output should be 6
// For lst = []  the output should be 0
// For lst = [-1,-5,2,-1,-5]  the output should be -126
function sum_squares($lst) {
    $sum = 0;
    foreach ($lst as $key => $value) {
        if ($key % 3 == 0) {
            $sum += $value * $value;
        } else if ($key % 4 == 0 && $key % 3 != 0) {
            $sum += $value * $value * $value;
        }
    }
    return $sum;
}

$lst = [1,2,3];
var_dump(sum_squares($lst));

$lst = [];
var_dump(sum_squares($lst));

$lst = [-1,-5,2,-1,-5];
var_dump(sum_squares($lst));


function candidate(...$args) {
    return sum_squares(...$args);
}

function test(): void {
    if (candidate(array(1, 2, 3)) !== 6) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 4, 9)) !== 14) { throw new Exception("Test failed!"); }
    if (candidate(array()) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 1, 1, 1, 1, 1, 1, 1, 1)) !== 9) { throw new Exception("Test failed!"); }
    if (candidate(array(-1, -1, -1, -1, -1, -1, -1, -1, -1)) !== -3) { throw new Exception("Test failed!"); }
    if (candidate(array(0)) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(-1, -5, 2, -1, -5)) !== -126) { throw new Exception("Test failed!"); }
    if (candidate(array(-56, -99, 1, 0, -2)) !== 3030) { throw new Exception("Test failed!"); }
    if (candidate(array(-1, 0, 0, 0, 0, 0, 0, 0, -1)) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(-16, -9, -2, 36, 36, 26, -20, 25, -40, 20, -4, 12, -26, 35, 37)) !== -14196) { throw new Exception("Test failed!"); }
    if (candidate(array(-1, -3, 17, -1, -15, 13, -1, 14, -14, -12, -5, 14, -14, 6, 13, 11, 16, 16, 4, 10)) !== -1448) { throw new Exception("Test failed!"); }
}

test();