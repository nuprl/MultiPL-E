//Return a greatest common divisor of two integers a and b
// >>> greatest_common_divisor(3, 5)
// 1
// >>> greatest_common_divisor(25, 15)
// 5
function greatest_common_divisor(a, b) {
    if (a == 0) {
        return b;
    }
    if (b == 0) {
        return a;
    }
    if (a == b) {
        return a;
    }
    if (a > b) {
        return greatest_common_divisor(a - b, b);
    }
    return greatest_common_divisor(a, b - a);
}
var assert = require('node:assert');
function test() {
    var candidate = greatest_common_divisor;
    assert.deepEqual(candidate(3, 7), 1);
    assert.deepEqual(candidate(10, 15), 5);
    assert.deepEqual(candidate(49, 14), 7);
    assert.deepEqual(candidate(144, 60), 12);
}
test();
