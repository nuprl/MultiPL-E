//remove_vowels is a function that takes string and returns string without vowels.
// >>> remove_vowels('')
// ''
// >>> remove_vowels('abcdef')
// 'bcdf'
// >>> remove_vowels('aaaaa')
// ''
// >>> remove_vowels('aaBAA')
// 'B'
// >>> remove_vowels('zbcd')
// 'zbcd'
function remove_vowels(text) {
    return text.replace(/[aeiou]/gi, '');
}
var assert = require('node:assert');
function test() {
    var candidate = remove_vowels;
    assert.deepEqual(candidate(""), "");
    assert.deepEqual(candidate("abcdef, ghijklm, "),", bcdf, ghjklm, ");, assert.deepEqual(candidate("fedcba"), "fdcb")));
    assert.deepEqual(candidate("eeeee"), "");
    assert.deepEqual(candidate("acBAA"), "cB");
    assert.deepEqual(candidate("EcBOO"), "cB");
    assert.deepEqual(candidate("ybcd"), "ybcd");
}
test();
