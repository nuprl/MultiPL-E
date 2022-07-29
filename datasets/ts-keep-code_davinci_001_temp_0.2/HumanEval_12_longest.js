{
    if (strings.length === 0) {
        return null;
    }
    var longest_1 = strings[0];
    for (var i = 1; i < strings.length; i++) {
        if (strings[i].length > longest_1.length) {
            longest_1 = strings[i];
        }
    }
    return longest_1;
}
var assert = require('node:assert');
function test() {
    var candidate = longest;
    assert.deepEqual(candidate([]), null);
    assert.deepEqual(candidate(["x", "y", "z"]), "x");
    assert.deepEqual(candidate(["x", "yyy", "zzzz", "www", "kkkk", "abc"]), "zzzz");
}
test();
