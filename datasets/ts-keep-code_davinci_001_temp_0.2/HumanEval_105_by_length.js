//Given an array of integers, sort the integers that are between 1 and 9 inclusive,
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
function by_length(arr) {
    var result = [];
    var sortedArr = arr.sort(function (a, b) { return a - b; });
    var reversedArr = sortedArr.reverse();
    for (var i = 0; i < reversedArr.length; i++) {
        if (reversedArr[i] >= 1 && reversedArr[i] <= 9) {
            result.push(getNumberName(reversedArr[i]));
        }
    }
    return result;
}
var assert = require('node:assert');
function test() {
    var candidate = by_length;
    assert.deepEqual(candidate([2, 1, 1, 4, 5, 8, 2, 3]), ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]);
    assert.deepEqual(candidate([]), []);
    assert.deepEqual(candidate([1, -1, 55]), ["One"]);
    assert.deepEqual(candidate([1, -1, 3, 2]), ["Three", "Two", "One"]);
    assert.deepEqual(candidate([9, 4, 8]), ["Nine", "Eight", "Four"]);
}
test();
