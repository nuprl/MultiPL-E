//Concatenate list of strings into a single string
// >>> concatenate([])
// ''
// >>> concatenate(['a', 'b', 'c'])
// 'abc'
function concatenate(strings) {
    return strings.join('');
}
var assert = require('node:assert');
function test() {
    var candidate = concatenate;
    assert.deepEqual(candidate([]), "");
    assert.deepEqual(candidate(["x", "y", "z"]), "xyz");
    assert.deepEqual(candidate(["x", "y", "z", "w", "k"]), "xyzwk");
}
test();
