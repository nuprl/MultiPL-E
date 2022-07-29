//Out of list of strings, return the longest one. Return the first one in case of multiple
// strings of the same length. Return None in case the input list is empty.
// >>> longest([])
// >>> longest(['a', 'b', 'c'])
// 'a'
// >>> longest(['a', 'bb', 'ccc'])
// 'ccc'
function longest(strings) {
    if (strings.length === 0) {
        return undefined;
    }
    var longest = strings[0];
    for (var i = 1; i < strings.length; i++) {
        if (strings[i].length > longest.length) {
            longest = strings[i];
        }
    }
    return longest;
}
var assert = require('node:assert');
function test() {
    var candidate = longest;
    assert.deepEqual(candidate([]), null);
    assert.deepEqual(candidate(["x", "y", "z"]), "x");
    assert.deepEqual(candidate(["x", "yyy", "zzzz", "www", "kkkk", "abc"]), "zzzz");
}
test();
