//Create a function that takes a value (string) representing a number
// and returns the closest integer to it. If the number is equidistant
// from two integers, round it away from zero.
// Examples
// >>> closest_integer("10")
// 10
// >>> closest_integer("15.3")
// 15
// Note:
// Rounding away from zero means that if the given number is equidistant
// from two integers, the one you should return is the one that is the
// farthest from zero. For example closest_integer("14.5") should
// return 15 and closest_integer("-14.5") should return -15.
function closest_integer(value) {
    var num = parseInt(value);
    return Math.round(num);
}
var assert = require('node:assert');
function test() {
    var candidate = closest_integer;
    assert.deepEqual(candidate("10"), 10);
    assert.deepEqual(candidate("14.5"), 15);
    assert.deepEqual(candidate("-15.5"), -16);
    assert.deepEqual(candidate("15.3"), 15);
    assert.deepEqual(candidate("0"), 0);
}
test();
