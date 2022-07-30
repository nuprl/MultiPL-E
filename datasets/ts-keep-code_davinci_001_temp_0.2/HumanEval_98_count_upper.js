//Given a string s, count the number of uppercase vowels in even indices.
// For example:
// count_upper('aBCdEf') returns 1
// count_upper('abcdefg') returns 0
// count_upper('dBBE') returns 0
function count_upper(s) {
    var count = 0;
    for (var i = 0; i < s.length; i++) {
        if (s[i] === s[i].toUpperCase() && i % 2 === 0) {
            count++;
        }
    }
    return count;
}
var assert = require('node:assert');
function test() {
    var candidate = count_upper;
    assert.deepEqual(candidate("aBCdEf"), 1);
    assert.deepEqual(candidate("abcdefg"), 0);
    assert.deepEqual(candidate("dBBE"), 0);
    assert.deepEqual(candidate("B"), 0);
    assert.deepEqual(candidate("U"), 1);
    assert.deepEqual(candidate(""), 0);
    assert.deepEqual(candidate("EEEE"), 2);
}
test();
