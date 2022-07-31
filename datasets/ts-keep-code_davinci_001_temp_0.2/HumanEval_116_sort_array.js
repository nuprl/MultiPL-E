//In this Kata, you have to sort an array of non-negative integers according to
// number of ones in their binary representation in ascending order.
// For similar number of ones, sort based on decimal value.
// It must be implemented like this:
// >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
// >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
// >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
function sort_array(arr) {
    var sorted = arr.sort(function (a, b) {
        var aBinary = a.toString(2);
        var bBinary = b.toString(2);
        var aOnes = aBinary.split("").filter(function (x) { return x === "1"; }).length;
        var bOnes = bBinary.split("").filter(function (x) { return x === "1"; }).length;
        if (aOnes === bOnes) {
            return a - b;
        }
        return aOnes - bOnes;
    });
    return sorted;
}
console.log(sort_array([1, 5, 2, 3, 4]));
console.log(sort_array([-2, -3, -4, -5, -6]));
console.log(sort_array([1, 0, 2, 3, 4]));
var assert = require('node:assert');
function test() {
    var candidate = sort_array;
    assert.deepEqual(candidate([1, 5, 2, 3, 4]), [1, 2, 4, 3, 5]);
    assert.deepEqual(candidate([-2, -3, -4, -5, -6]), [-4, -2, -6, -5, -3]);
    assert.deepEqual(candidate([1, 0, 2, 3, 4]), [0, 1, 2, 4, 3]);
    assert.deepEqual(candidate([]), []);
    assert.deepEqual(candidate([2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4]), [2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77]);
    assert.deepEqual(candidate([3, 6, 44, 12, 32, 5]), [32, 3, 5, 6, 12, 44]);
    assert.deepEqual(candidate([2, 4, 8, 16, 32]), [2, 4, 8, 16, 32]);
    assert.deepEqual(candidate([2, 4, 8, 16, 32]), [2, 4, 8, 16, 32]);
}
test();
