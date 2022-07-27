<?php
// For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
// Empty sum should be equal to 0 and empty product should be equal to 1.
// >>> sum_product([])
// (0, 1)
// >>> sum_product([1, 2, 3, 4])
// (10, 24)
function sum_product($numbers) {
    $sum = 0;
    $product = 1;
    foreach ($numbers as $number) {
        $sum += $number;
        $product *= $number;
    }
    return array($sum, $product);
}

$numbers = array(1, 2, 3, 4);
$result = sum_product($numbers);
echo 'Sum: ' . $result[0] . '<br>';
echo 'Product: ' . $result[1] . '<br>';

function candidate(...$args) {
    return sum_product(...$args);
}

function test(): void {
    if (candidate(array()) !== array(0, 1)) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 1, 1)) !== array(3, 1)) { throw new Exception("Test failed!"); }
    if (candidate(array(100, 0)) !== array(100, 0)) { throw new Exception("Test failed!"); }
    if (candidate(array(3, 5, 7)) !== array(15, 105)) { throw new Exception("Test failed!"); }
    if (candidate(array(10)) !== array(10, 10)) { throw new Exception("Test failed!"); }
}

test();