//Create a function encrypt that takes a string as an argument and
// returns a string encrypted with the alphabet being rotated. 
// The alphabet should be rotated in a manner such that the letters 
// shift down by two multiplied to two places.
// For example:
// encrypt('hi') returns 'lm'
// encrypt('asdfghjkl') returns 'ewhjklnop'
// encrypt('gf') returns 'kj'
// encrypt('et') returns 'ix'
function encrypt(s) {
    var newString = '';
    for (var i = 0; i < s.length; i++) {
        var newChar = s.charCodeAt(i) + 2;
        if (newChar > 122) {
            newChar = newChar - 26;
        }
        newString += String.fromCharCode(newChar);
    }
    return newString;
}
var assert = require('node:assert');
function test() {
    var candidate = encrypt;
    assert.deepEqual(candidate("hi"), "lm");
    assert.deepEqual(candidate("asdfghjkl"), "ewhjklnop");
    assert.deepEqual(candidate("gf"), "kj");
    assert.deepEqual(candidate("et"), "ix");
    assert.deepEqual(candidate("faewfawefaewg"), "jeiajeaijeiak");
    assert.deepEqual(candidate("hellomyfriend"), "lippsqcjvmirh");
    assert.deepEqual(candidate("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh"), "hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl");
    assert.deepEqual(candidate("a"), "e");
}
test();
