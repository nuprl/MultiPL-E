//Return sorted unique elements in a list
// >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
// [0, 2, 3, 5, 9, 123]
function unique(l) {
    return l.filter(function (v, i, a) { return a.indexOf(v) === i; });
}
var assert = require('node:assert');
function test() {
    var candidate = unique;
    assert.deepEqual(candidate([5, 3, 5, 2, 3, 3, 9, 0, 123]), [0, 2, 3, 5, 9, 123]);
}
test();
