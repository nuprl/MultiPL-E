//This function takes two positive numbers x and y and returns the
// biggest even integer number that is in the range [x, y] inclusive. If 
// there's no such number, then the function should return -1.
// For example:
// choose_num(12, 15) = 14
// choose_num(13, 12) = -1
function choose_num(x, y) {
    var result = -1;
    for (var i = x; i <= y; i++) {
        if (i % 2 == 0) {
            result = i;
            break;
        }
    }
    return result;
}
var assert = require('node:assert');
function test() {
    var candidate = choose_num;
    assert.deepEqual(candidate(12, 15), 14);
    assert.deepEqual(candidate(13, 12), -1);
    assert.deepEqual(candidate(33, 12354), 12354);
    assert.deepEqual(candidate(5234, 5233), -1);
    assert.deepEqual(candidate(6, 29), 28);
    assert.deepEqual(candidate(27, 10), -1);
    assert.deepEqual(candidate(7, 7), -1);
    assert.deepEqual(candidate(546, 546), 546);
}
test();
