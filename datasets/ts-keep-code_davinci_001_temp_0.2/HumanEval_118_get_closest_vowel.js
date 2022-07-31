//You are given a word. Your task is to find the closest vowel that stands between 
// two consonants from the right side of the word (case sensitive).
// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
// find any vowel met the above condition. 
// You may assume that the given string contains English letter only.
// Example:
// get_closest_vowel("yogurt") ==> "u"
// get_closest_vowel("FULL") ==> "U"
// get_closest_vowel("quick") ==> ""
// get_closest_vowel("ab") ==> ""
function get_closest_vowel(word) {
    var vowels = ['a', 'e', 'i', 'o', 'u'];
    var consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'];
    var result = '';
    var index = 0;
    var i = 0;
    var j = 0;
    var k = 0;
    var l = 0;
    var m = 0;
    var n = 0;
    var o = 0;
    var p = 0;
    var q = 0;
    var r = 0;
    var s = 0;
    var t = 0;
    var u = 0;
    var v = 0;
    var w = 0;
    var x = 0;
    var y = 0;
    var z = 0;
    for (i = 0; i < word.length; i++) {
        if (vowels.includes(word[i])) {
            index = i;
            break;
        }
    }
    for (j = index; j < word.length; j++) {
        if (consonants.includes(word[j])) {
            result = word[j];
            break;
        }
    }
    for (k = index; k < word.length; k++) {
        if (vowels.includes(word[k])) {
            result = word[k];
            break;
        }
    }
    for (l = index; l < word.length; l++) {
        if (consonants.includes(word[l])) {
            result = word[l];
            break;
        }
    }
    for (m = index; m < word.length; m++) {
        if (vowels.includes(word[m])) {
            result = word[m];
            break;
        }
    }
    for (n = index; n < word.length; n)
        ;
    var assert = require('node:assert');
    function test() {
        var candidate = get_closest_vowel;
        assert.deepEqual(candidate("yogurt"), "u");
        assert.deepEqual(candidate("full"), "u");
        assert.deepEqual(candidate("easy"), "");
        assert.deepEqual(candidate("eAsy"), "");
        assert.deepEqual(candidate("ali"), "");
        assert.deepEqual(candidate("bad"), "a");
        assert.deepEqual(candidate("most"), "o");
        assert.deepEqual(candidate("ab"), "");
        assert.deepEqual(candidate("ba"), "");
        assert.deepEqual(candidate("quick"), "");
        assert.deepEqual(candidate("anime"), "i");
        assert.deepEqual(candidate("Asia"), "");
        assert.deepEqual(candidate("Above"), "o");
    }
    test();
}
