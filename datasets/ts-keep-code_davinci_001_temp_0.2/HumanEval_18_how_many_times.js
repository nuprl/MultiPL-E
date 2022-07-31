//Find how many times a given substring can be found in the original string. Count overlaping cases.
// >>> how_many_times('', 'a')
// 0
// >>> how_many_times('aaa', 'a')
// 3
// >>> how_many_times('aaaa', 'aa')
// 3
function how_many_times(string, substring) {
    var count = 0;
    var index = 0;
    while (index < string.length) {
        var found = string.indexOf(substring, index);
        if (found === -1) {
            break;
        }
        count++;
        index = found + 1;
    }
    return count;
}
var assert = require('node:assert');
function test() {
    var candidate = how_many_times;
    assert.deepEqual(candidate("", "x"), 0);
    assert.deepEqual(candidate("xyxyxyx", "x"), 4);
    assert.deepEqual(candidate("cacacacac", "cac"), 4);
    assert.deepEqual(candidate("john doe", "john"), 1);
}
test();
