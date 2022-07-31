//Create a function encrypt that takes a string as an argument and
// returns a string encrypted with the alphabet being rotated. 
// The alphabet should be rotated in a manner such that the letters 
// shift down by two multiplied to two places.
// For example:
// encrypt('hi') returns 'lm'
// encrypt('asdfghjkl') returns 'ewhjklnop'
// encrypt('gf') returns 'kj'
// encrypt('et') returns 'ix'
function encrypt(s){
    var alphabet = 'abcdefghijklmnopqrstuvwxyz';
    var encrypted = '';
    for(var i = 0; i < s.length; i++){
        var index = alphabet.indexOf(s[i]);
        var newIndex = (index + 2) % 26;
        encrypted += alphabet[newIndex];
    }
    return encrypted;
}


const assert = require('node:assert');


function test() {
  let candidate = encrypt;
  assert.deepEqual(candidate("hi"),"lm");
  assert.deepEqual(candidate("asdfghjkl"),"ewhjklnop");
  assert.deepEqual(candidate("gf"),"kj");
  assert.deepEqual(candidate("et"),"ix");
  assert.deepEqual(candidate("faewfawefaewg"),"jeiajeaijeiak");
  assert.deepEqual(candidate("hellomyfriend"),"lippsqcjvmirh");
  assert.deepEqual(candidate("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh"),"hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl");
  assert.deepEqual(candidate("a"),"e");
}

test();