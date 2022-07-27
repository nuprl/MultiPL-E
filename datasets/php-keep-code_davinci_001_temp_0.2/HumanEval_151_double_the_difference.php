<?php
// Given a list of numbers, return the sum of squares of the numbers
// in the list that are odd. Ignore numbers that are negative or not integers.
// double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
// double_the_difference([-1, -2, 0]) == 0
// double_the_difference([9, -2]) == 81
// double_the_difference([0]) == 0  
// If the input list is empty, return 0.
function double_the_difference($lst) {
  $sum = 0;
  foreach ($lst as $value) {
    if ($value % 2 != 0) {
      $sum += $value * $value;
    }
  }
  return $sum;
}


function candidate(...$args) {
    return double_the_difference(...$args);
}

function test(): void {
    if (candidate(array()) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(5.0, 4.0)) !== 25) { throw new Exception("Test failed!"); }
    if (candidate(array(0.1, 0.2, 0.3)) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(-10.0, -20.0, -30.0)) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(-1.0, -2.0, 8.0)) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(0.2, 3.0, 5.0)) !== 34) { throw new Exception("Test failed!"); }
    if (candidate(array(-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0)) !== 165) { throw new Exception("Test failed!"); }
}

test();