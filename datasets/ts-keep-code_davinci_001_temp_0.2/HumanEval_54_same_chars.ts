//Check if two words have the same characters.
// >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
// True
// >>> same_chars('abcd', 'dddddddabc')
// True
// >>> same_chars('dddddddabc', 'abcd')
// True
// >>> same_chars('eabcd', 'dddddddabc')
// False
// >>> same_chars('abcd', 'dddddddabce')
// False
// >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
// False
function same_chars(s0: string, s1: string): boolean {
  if (s0.length !== s1.length) {
    return false;
  }
  let s0_chars = {};
  for (let i = 0; i < s0.length; i++) {
    if (s0_chars[s0[i]]) {
      s0_chars[s0[i]] += 1;
    } else {
      s0_chars[s0[i]] = 1;
    }
  }
  for (let i = 0; i < s1.length; i++) {
    if (s0_chars[s1[i]]) {
      s0_chars[s1[i]] -= 1;
    } else {
      return false;
    }
  }
  for (let key in s0_chars) {
    if (s0_chars[key] !== 0) {
      return false;
    }
  }
  return true;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = same_chars;
  assert.deepEqual(candidate("eabcdzzzz", "dddzzzzzzzddeddabc"),true);
  assert.deepEqual(candidate("abcd", "dddddddabc"),true);
  assert.deepEqual(candidate("dddddddabc", "abcd"),true);
  assert.deepEqual(candidate("eabcd", "dddddddabc"),false);
  assert.deepEqual(candidate("abcd", "dddddddabcf"),false);
  assert.deepEqual(candidate("eabcdzzzz", "dddzzzzzzzddddabc"),false);
  assert.deepEqual(candidate("aabb", "aaccc"),false);
}

test();