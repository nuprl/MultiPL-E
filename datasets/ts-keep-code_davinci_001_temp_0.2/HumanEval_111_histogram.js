//Given a string representing a space separated lowercase letters, return a dictionary
// of the letter with the most repetition and containing the corresponding count.
// If several letters have the same occurrence, return all of them.
// Example:
// histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
// histogram('a b b a') == {'a': 2, 'b': 2}
// histogram('a b c a b') == {'a': 2, 'b': 2}
// histogram('b b b b a') == {'b': 4}
// histogram('') == {}
function histogram(test) {
    var histogram = {};
    var words = test.split(' ');
    for (var i = 0; i < words.length; i++) {
        if (histogram[words[i]] == undefined) {
            histogram[words[i]] = 1;
        }
        else {
            histogram[words[i]]++;
        }
    }
    return histogram;
}
var assert = require('node:assert');
function test() {
    var candidate = histogram;
    assert.deepEqual(candidate("a b b a"), { "a": 2, "b": 2 });
    assert.deepEqual(candidate("a b c a b"), { "a": 2, "b": 2 });
    assert.deepEqual(candidate("a b c d g"), { "a": 1, "b": 1, "c": 1, "d": 1, "g": 1 });
    assert.deepEqual(candidate("r t g"), { "r": 1, "t": 1, "g": 1 });
    assert.deepEqual(candidate("b b b b a"), { "b": 4 });
    assert.deepEqual(candidate("r t g"), { "r": 1, "t": 1, "g": 1 });
    assert.deepEqual(candidate(""), {});
    assert.deepEqual(candidate("a"), { "a": 1 });
}
test();
