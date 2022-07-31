//Your task is to write a function that returns true if a number x is a simple
// power of n and false in other cases.
// x is a simple power of n if n**int=x
// For example:
// is_simple_power(1, 4) => true
// is_simple_power(2, 2) => true
// is_simple_power(8, 2) => true
// is_simple_power(3, 2) => false
// is_simple_power(3, 1) => false
// is_simple_power(5, 3) => false
function is_simple_power(x, n) {
    if (x === 1) {
        return true;
    }
    var i = 1;
    while (i < n) {
        i++;
        if (x === Math.pow(n, i)) {
            return true;
        }
    }
    return false;
}
console.log(is_simple_power(1, 4));
console.log(is_simple_power(2, 2));
console.log(is_simple_power(8, 2));
console.log(is_simple_power(3, 2));
console.log(is_simple_power(3, 1));
console.log(is_simple_power(5, 3));
var assert = require('node:assert');
function test() {
    var candidate = is_simple_power;
    assert.deepEqual(candidate(16, 2), true);
    assert.deepEqual(candidate(143214, 16), false);
    assert.deepEqual(candidate(4, 2), true);
    assert.deepEqual(candidate(9, 3), true);
    assert.deepEqual(candidate(16, 4), true);
    assert.deepEqual(candidate(24, 2), false);
    assert.deepEqual(candidate(128, 4), false);
    assert.deepEqual(candidate(12, 6), false);
    assert.deepEqual(candidate(1, 1), true);
    assert.deepEqual(candidate(1, 12), true);
}
test();
