<?php
// Given an integer. return a tuple that has the number of even and odd digits respectively.
// Example:
// even_odd_count(-12) ==> (1, 1)
// even_odd_count(123) ==> (1, 2)
function even_odd_count($num) {
    $even = 0;
    $odd = 0;
    $num = abs($num);
    while ($num > 0) {
        $digit = $num % 10;
        if ($digit % 2 == 0) {
            $even++;
        } else {
            $odd++;
        }
        $num = intdiv($num, 10);
    }
    return array($even, $odd);
}

$num = -12;
$result = even_odd_count($num);
var_dump($result);

function candidate(...$args) {
    return even_odd_count(...$args);
}

function test(): void {
    if (candidate(7) !== array(0, 1)) { throw new Exception("Test failed!"); }
    if (candidate(-78) !== array(1, 1)) { throw new Exception("Test failed!"); }
    if (candidate(3452) !== array(2, 2)) { throw new Exception("Test failed!"); }
    if (candidate(346211) !== array(3, 3)) { throw new Exception("Test failed!"); }
    if (candidate(-345821) !== array(3, 3)) { throw new Exception("Test failed!"); }
    if (candidate(-2) !== array(1, 0)) { throw new Exception("Test failed!"); }
    if (candidate(-45347) !== array(2, 3)) { throw new Exception("Test failed!"); }
    if (candidate(0) !== array(1, 0)) { throw new Exception("Test failed!"); }
}

test();