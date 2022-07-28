<?php
// Input is a space-delimited string of numberals from 'zero' to 'nine'.
// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
// Return the string with numbers sorted from smallest to largest
// >>> sort_numbers('three one five')
// 'one three five'
function sort_numbers($numbers) {
    $numbers = explode(' ', $numbers);
    sort($numbers);
    return implode(' ', $numbers);
}


function candidate(...$args) {
    return sort_numbers(...$args);
}

function test(): void {
    if (candidate("") !== "") { throw new Exception("Test failed!"); }
    if (candidate("three") !== "three") { throw new Exception("Test failed!"); }
    if (candidate("three five nine") !== "three five nine") { throw new Exception("Test failed!"); }
    if (candidate("five zero four seven nine eight") !== "zero four five seven eight nine") { throw new Exception("Test failed!"); }
    if (candidate("six five four three two one zero") !== "zero one two three four five six") { throw new Exception("Test failed!"); }
}

test();