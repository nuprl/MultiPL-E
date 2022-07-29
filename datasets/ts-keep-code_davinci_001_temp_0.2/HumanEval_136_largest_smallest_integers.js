//Create a function that returns a tuple (a, b), where 'a' is
// the largest of negative integers, and 'b' is the smallest
// of positive integers in a list.
// If there is no negative or positive integers, return them as None.
// Examples:
// largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (None, 1)
// largest_smallest_integers([]) == (None, None)
// largest_smallest_integers([0]) == (None, None)
function largest_smallest_integers(lst) {
    var max = -Infinity;
    var min = Infinity;
    for (var i = 0; i < lst.length; i++) {
        if (lst[i] < 0) {
            if (lst[i] > max) {
                max = lst[i];
            }
        }
        else {
            if (lst[i] < min) {
                min = lst[i];
            }
        }
    }
    return [max, min];
}
var assert = require('node:assert');
function test() {
    var candidate = largest_smallest_integers;
    assert.deepEqual(candidate([2, 4, 1, 3, 5, 7]), [null, 1]);
    assert.deepEqual(candidate([2, 4, 1, 3, 5, 7, 0]), [null, 1]);
    assert.deepEqual(candidate([1, 3, 2, 4, 5, 6, -2]), [-2, 1]);
    assert.deepEqual(candidate([4, 5, 3, 6, 2, 7, -7]), [-7, 2]);
    assert.deepEqual(candidate([7, 3, 8, 4, 9, 2, 5, -9]), [-9, 2]);
    assert.deepEqual(candidate([]), [null, null]);
    assert.deepEqual(candidate([0]), [null, null]);
    assert.deepEqual(candidate([-1, -3, -5, -6]), [-1, null]);
    assert.deepEqual(candidate([-1, -3, -5, -6, 0]), [-1, null]);
    assert.deepEqual(candidate([-6, -4, -4, -3, 1]), [-3, 1]);
    assert.deepEqual(candidate([-6, -4, -4, -3, -100, 1]), [-3, 1]);
}
test();
