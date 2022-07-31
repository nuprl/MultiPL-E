//Given a positive integer n, return the product of the odd digits.
// Return 0 if all digits are even.
// For example:
// digits(1)  == 1
// digits(4)  == 0
// digits(235) == 15
function digits(n) {
    var product = 1;
    var str = n.toString();
    for (var i = 0; i < str.length; i++) {
        if (parseInt(str[i]) % 2 !== 0) {
            product *= parseInt(str[i]);
        }
    }
    return product;
}
var assert = require('node:assert');
function test() {
    var candidate = digits;
    assert.deepEqual(candidate(5), 5);
    assert.deepEqual(candidate(54), 5);
    assert.deepEqual(candidate(120), 1);
    assert.deepEqual(candidate(5014), 5);
    assert.deepEqual(candidate(98765), 315);
    assert.deepEqual(candidate(5576543), 2625);
    assert.deepEqual(candidate(2468), 0);
}
test();
