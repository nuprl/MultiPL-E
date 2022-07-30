//You are given a string s.
// Your task is to check if the string is happy or not.
// A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
// For example:
// is_happy(a) => False
// is_happy(aa) => False
// is_happy(abcd) => True
// is_happy(aabb) => False
// is_happy(adb) => True
// is_happy(xyy) => False
function is_happy(s: string): boolean {
  let count = 0;
  let arr = s.split('');
  for (let i = 0; i < arr.length; i++) {
    if (arr[i] === arr[i + 1]) {
      count++;
    }
  }
  if (count === 0) {
    return true;
  } else {
    return false;
  }
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = is_happy;
  assert.deepEqual(candidate("a"),false);
  assert.deepEqual(candidate("aa"),false);
  assert.deepEqual(candidate("abcd"),true);
  assert.deepEqual(candidate("aabb"),false);
  assert.deepEqual(candidate("adb"),true);
  assert.deepEqual(candidate("xyy"),false);
  assert.deepEqual(candidate("iopaxpoi"),true);
  assert.deepEqual(candidate("iopaxioi"),false);
}

test();