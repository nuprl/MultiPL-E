//Task
// We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
// then check if the result string is palindrome.
// A string is called palindrome if it reads the same backward as forward.
// You should return a tuple containing the result string and True/False for the check.
// Example
// For s = "abcde", c = "ae", the result should be ('bcd',False)
// For s = "abcdef", c = "b"  the result should be ('acdef',False)
// For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
function reverse_delete(s, c) {
    var result = s.split('').filter(function (x) { return !c.includes(x); }).join('');
    return [result, result === result.split('').reverse().join('')];
}
var assert = require('node:assert');
function test() {
    var candidate = reverse_delete;
    assert.deepEqual(candidate("abcde", "ae"), ["bcd", false]);
    assert.deepEqual(candidate("abcdef", "b"), ["acdef", false]);
    assert.deepEqual(candidate("abcdedcba", "ab"), ["cdedc", true]);
    assert.deepEqual(candidate("dwik", "w"), ["dik", false]);
    assert.deepEqual(candidate("a", "a"), ["", true]);
    assert.deepEqual(candidate("abcdedcba", ""), ["abcdedcba", true]);
    assert.deepEqual(candidate("abcdedcba", "v"), ["abcdedcba", true]);
    assert.deepEqual(candidate("vabba", "v"), ["abba", true]);
    assert.deepEqual(candidate("mamma", "mia"), ["", true]);
}
test();
