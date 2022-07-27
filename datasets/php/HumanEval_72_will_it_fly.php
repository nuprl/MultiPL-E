<?php
// Write a function that returns True if the object q will fly, and False otherwise.
// The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w.
// Example:
// will_it_fly([1, 2], 5) ➞ False 
// # 1+2 is less than the maximum possible weight, but it's unbalanced.
// will_it_fly([3, 2, 3], 1) ➞ False
// # it's balanced, but 3+2+3 is more than the maximum possible weight.
// will_it_fly([3, 2, 3], 9) ➞ True
// # 3+2+3 is less than the maximum possible weight, and it's balanced.
// will_it_fly([3], 5) ➞ True
// # 3 is less than the maximum possible weight, and it's balanced.
function will_it_fly($q, $w) {
  $sum = 0;
  $isBalanced = true;
  for ($i = 0; $i < count($q); $i++) {
    $sum += $q[$i];
    if ($i > 0 && $q[$i] < $q[$i - 1]) {
      $isBalanced = false;
    }
  }
  return $isBalanced && $sum <= $w;
}


function candidate(...$args) {
    return will_it_fly(...$args);
}

function test(): void {
    if (candidate(array(3, 2, 3), 9) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2), 5) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(3), 5) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(3, 2, 3), 1) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, 3), 6) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(5), 5) !== true) { throw new Exception("Test failed!"); }
}

test();