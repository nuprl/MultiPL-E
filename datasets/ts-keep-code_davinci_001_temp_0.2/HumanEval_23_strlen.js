//Return length of given string
// >>> strlen('')
// 0
// >>> strlen('abc')
// 3
function strlen(string) {
    var count = 0;
    for (var i = 0; i < string.length; i++) {
        if (string[i] !== " ") {
            count++;
        }
    }
    return count;
}
var assert = require('node:assert');
function test() {
    var candidate = strlen;
    assert.deepEqual(candidate(""), 0);
    assert.deepEqual(candidate("x"), 1);
    assert.deepEqual(candidate("asdasnakj"), 9);
}
test();
