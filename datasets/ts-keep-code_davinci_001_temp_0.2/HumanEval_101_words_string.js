//You will be given a string of words separated by commas or spaces. Your task is
// to split the string into words and return an array of the words.
// For example:
// words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
// words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
function words_string(s) {
    return s.split(/[\s,]+/);
}
var assert = require('node:assert');
function test() {
    var candidate = words_string;
    assert.deepEqual(candidate("Hi, my name is John"), ["Hi", "my", "name", "is", "John"]);
    assert.deepEqual(candidate("One, two, three, four, five, six"), ["One", "two", "three", "four", "five", "six"]);
    assert.deepEqual(candidate("Hi, my name"), ["Hi", "my", "name"]);
    assert.deepEqual(candidate("One,, two, three, four, five, six,"), ["One", "two", "three", "four", "five", "six"]);
    assert.deepEqual(candidate(""), []);
    assert.deepEqual(candidate("ahmed     , gamal"), ["ahmed", "gamal"]);
}
test();
