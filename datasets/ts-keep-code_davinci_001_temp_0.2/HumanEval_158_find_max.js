//Write a function that accepts a list of strings.
// The list contains different words. Return the word with maximum number
// of unique characters. If multiple strings have maximum number of unique
// characters, return the one which comes first in lexicographical order.
// find_max(["name", "of", "string"]) == "string"
// find_max(["name", "enam", "game"]) == "enam"
// find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
function find_max(words) {
    var max = 0;
    var maxWord = "";
    for (var i = 0; i < words.length; i++) {
        var word = words[i];
        var count = 0;
        for (var j = 0; j < word.length; j++) {
            var char = word[j];
            if (word.indexOf(char) == j) {
                count++;
            }
        }
        if (count > max) {
            max = count;
            maxWord = word;
        }
    }
    return maxWord;
}
console.log(find_max(["name", "of", "string"]));
console.log(find_max(["name", "enam", "game"]));
console.log(find_max(["aaaaaaa", "bb", "cc"]));
var assert = require('node:assert');
function test() {
    var candidate = find_max;
    assert.deepEqual(candidate(["name", "of", "string"]), "string");
    assert.deepEqual(candidate(["name", "enam", "game"]), "enam");
    assert.deepEqual(candidate(["aaaaaaa", "bb", "cc"]), "aaaaaaa");
    assert.deepEqual(candidate(["abc", "cba"]), "abc");
    assert.deepEqual(candidate(["play", "this", "game", "of", "footbott"]), "footbott");
    assert.deepEqual(candidate(["we", "are", "gonna", "rock"]), "gonna");
    assert.deepEqual(candidate(["we", "are", "a", "mad", "nation"]), "nation");
    assert.deepEqual(candidate(["this", "is", "a", "prrk"]), "this");
    assert.deepEqual(candidate(["b"]), "b");
    assert.deepEqual(candidate(["play", "play", "play"]), "play");
}
test();
