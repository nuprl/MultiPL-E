//Return median of elements in the list l.
// >>> median([3, 1, 2, 4, 5])
// 3
// >>> median([-10, 4, 6, 1000, 10, 20])
// 15.0
function median(l) {
    var sorted = l.sort(function (a, b) { return a - b; });
    var mid = Math.floor(sorted.length / 2);
    return sorted[mid];
}
var assert = require('node:assert');
function test() {
    var candidate = median;
    assert.deepEqual(candidate([3, 1, 2, 4, 5]), 3);
    assert.deepEqual(candidate([-10, 4, 6, 1000, 10, 20]), 8.0);
    assert.deepEqual(candidate([5]), 5);
    assert.deepEqual(candidate([6, 5]), 5.5);
    assert.deepEqual(candidate([8, 1, 3, 9, 9, 2, 7]), 7);
}
test();
