//You are given a string s.
// if s[i] is a letter, reverse its case from lower to upper or vise versa, 
// otherwise keep it as it is.
// If the string contains no letters, reverse the string.
// The function should return the resulted string.
// Examples
// solve("1234") = "4321"
// solve("ab") = "AB"
// solve("#a@C") = "#A@c"
function solve(s){
    let result = '';
    for (let i = 0; i < s.length; i++) {
        if (s[i] >= 'a' && s[i] <= 'z') {
            result += s[i].toUpperCase();
        } else if (s[i] >= 'A' && s[i] <= 'Z') {
            result += s[i].toLowerCase();
        } else {
            result += s[i];
        }
    }
    return result;
}


const assert = require('node:assert');


function test() {
  let candidate = solve;
  assert.deepEqual(candidate("AsDf"),"aSdF");
  assert.deepEqual(candidate("1234"),"4321");
  assert.deepEqual(candidate("ab"),"AB");
  assert.deepEqual(candidate("#a@C"),"#A@c");
  assert.deepEqual(candidate("#AsdfW^45"),"#aSDFw^45");
  assert.deepEqual(candidate("#6@2"),"2@6#");
  assert.deepEqual(candidate("#$a^D"),"#$A^d");
  assert.deepEqual(candidate("#ccc"),"#CCC");
}

test();