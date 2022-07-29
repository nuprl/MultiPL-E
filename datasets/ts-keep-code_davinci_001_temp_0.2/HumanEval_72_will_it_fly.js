//Write a function that returns True if the object q will fly, and False otherwise.
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
function will_it_fly(q, w) {
    return q.length > 0 && q.length % 2 == 0 && q.reduce(function (a, b) { return a + b; }) <= w && is_palindrome(q);
}
var assert = require('node:assert');
function test() {
    var candidate = will_it_fly;
    assert.deepEqual(candidate([3, 2, 3], 9), true);
    assert.deepEqual(candidate([1, 2], 5), false);
    assert.deepEqual(candidate([3], 5), true);
    assert.deepEqual(candidate([3, 2, 3], 1), false);
    assert.deepEqual(candidate([1, 2, 3], 6), false);
    assert.deepEqual(candidate([5], 5), true);
}
test();
