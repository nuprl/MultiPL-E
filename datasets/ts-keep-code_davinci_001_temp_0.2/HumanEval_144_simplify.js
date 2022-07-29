//Your task is to implement a function that will simplify the expression
// x * n. The function returns True if x * n evaluates to a whole number and False
// otherwise. Both x and n, are string representation of a fraction, and have the following format,
// <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
// You can assume that x, and n are valid fractions, and do not have zero as denominator.
// simplify("1/5", "5/1") = True
// simplify("1/6", "2/1") = False
// simplify("7/10", "10/2") = False
function simplify(x, n) {
    var _a = x.split('/'), xNumerator = _a[0], xDenominator = _a[1];
    var _b = n.split('/'), nNumerator = _b[0], nDenominator = _b[1];
    var xFraction = parseInt(xNumerator) / parseInt(xDenominator);
    var nFraction = parseInt(nNumerator) / parseInt(nDenominator);
    return xFraction * nFraction === parseInt(xNumerator) / parseInt(xDenominator);
}
console.log(simplify("1/5", "5/1"));
console.log(simplify("1/6", "2/1"));
console.log(simplify("7/10", "10/2"));
var assert = require('node:assert');
function test() {
    var candidate = simplify;
    assert.deepEqual(candidate("1/5", "5/1"), true);
    assert.deepEqual(candidate("1/6", "2/1"), false);
    assert.deepEqual(candidate("5/1", "3/1"), true);
    assert.deepEqual(candidate("7/10", "10/2"), false);
    assert.deepEqual(candidate("2/10", "50/10"), true);
    assert.deepEqual(candidate("7/2", "4/2"), true);
    assert.deepEqual(candidate("11/6", "6/1"), true);
    assert.deepEqual(candidate("2/3", "5/2"), false);
    assert.deepEqual(candidate("5/2", "3/5"), false);
    assert.deepEqual(candidate("2/4", "8/4"), true);
    assert.deepEqual(candidate("2/4", "4/2"), true);
    assert.deepEqual(candidate("1/5", "5/1"), true);
    assert.deepEqual(candidate("1/5", "1/5"), false);
}
test();
