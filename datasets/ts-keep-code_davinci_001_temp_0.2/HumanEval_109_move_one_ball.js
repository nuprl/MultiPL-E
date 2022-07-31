//We have an array 'arr' of N integers arr[1], arr[2], ..., arr[N].The
// numbers in the array will be randomly ordered. Your task is to determine if
// it is possible to get an array sorted in non-decreasing order by performing 
// the following operation on the given array:
// You are allowed to perform right shift operation any number of times.
// One right shift operation means shifting all elements of the array by one
// position in the right direction. The last element of the array will be moved to
// the starting position in the array i.e. 0th index. 
// If it is possible to obtain the sorted array by performing the above operation
// then return True else return False.
// If the given array is empty then return True.
// Note: The given list is guaranteed to have unique elements.
// For Example:
// move_one_ball([3, 4, 5, 1, 2])==>True
// Explanation: By performin 2 right shift operations, non-decreasing order can
// be achieved for the given array.
// move_one_ball([3, 5, 4, 1, 2])==>False
// Explanation:It is not possible to get non-decreasing order for the given
// array by performing any number of right shift operations.
function move_one_ball(arr) {
    if (arr.length === 0) {
        return true;
    }
    var min = arr[0];
    var max = arr[0];
    for (var i = 1; i < arr.length; i++) {
        if (arr[i] < min) {
            min = arr[i];
        }
        if (arr[i] > max) {
            max = arr[i];
        }
    }
    if (max - min <= arr.length - 1) {
        return true;
    }
    return false;
}
var assert = require('node:assert');
function test() {
    var candidate = move_one_ball;
    assert.deepEqual(candidate([3, 4, 5, 1, 2]), true);
    assert.deepEqual(candidate([3, 5, 10, 1, 2]), true);
    assert.deepEqual(candidate([4, 3, 1, 2]), false);
    assert.deepEqual(candidate([3, 5, 4, 1, 2]), false);
    assert.deepEqual(candidate([]), true);
}
test();
