//Given an array of non-negative integers, return a copy of the given array after sorting,
// you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
// or sort it in descending order if the sum( first index value, last index value) is even.
// Note:
// * don't change the given array.
// Examples:
// * sort_array([]) => []
// * sort_array([5]) => [5]
// * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
// * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
function sort_array(array) {
    if (array.length === 0) {
        return array;
    }
    if (array.length === 1) {
        return array;
    }
    var sum = array[0] + array[array.length - 1];
    if (sum % 2 === 0) {
        return array.sort(function (a, b) { return b - a; });
    }
    else {
        return array.sort(function (a, b) { return a - b; });
    }
}
var assert = require('node:assert');
function test() {
    var candidate = sort_array;
    assert.deepEqual(candidate([]), []);
    assert.deepEqual(candidate([5]), [5]);
    assert.deepEqual(candidate([2, 4, 3, 0, 1, 5]), [0, 1, 2, 3, 4, 5]);
    assert.deepEqual(candidate([2, 4, 3, 0, 1, 5, 6]), [6, 5, 4, 3, 2, 1, 0]);
    assert.deepEqual(candidate([2, 1]), [1, 2]);
    assert.deepEqual(candidate([15, 42, 87, 32, 11, 0]), [0, 11, 15, 32, 42, 87]);
    assert.deepEqual(candidate([21, 14, 23, 11]), [23, 21, 14, 11]);
}
test();
