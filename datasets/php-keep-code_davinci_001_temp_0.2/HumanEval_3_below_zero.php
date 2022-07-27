<?php
// You're given a list of deposit and withdrawal operations on a bank account that starts with
// zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
// at that point function should return True. Otherwise it should return False.
// >>> below_zero([1, 2, 3])
// False
// >>> below_zero([1, 2, -4, 5])
// True
function below_zero($operations) {
    $balance = 0;
    foreach ($operations as $operation) {
        if ($operation < 0) {
            $balance -= $operation;
        } else {
            $balance += $operation;
        }
        if ($balance < 0) {
            return true;
        }
    }
    return false;
}


function candidate(...$args) {
    return below_zero(...$args);
}

function test(): void {
    if (candidate(array()) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, -3, 1, 2, -3)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(1, 2, -4, 5, 6)) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1, -1, 2, -2, 5, -5, 4, -4)) !== false) { throw new Exception("Test failed!"); }
    if (candidate(array(1, -1, 2, -2, 5, -5, 4, -5)) !== true) { throw new Exception("Test failed!"); }
    if (candidate(array(1, -2, 2, -2, 5, -5, 4, -4)) !== true) { throw new Exception("Test failed!"); }
}

test();