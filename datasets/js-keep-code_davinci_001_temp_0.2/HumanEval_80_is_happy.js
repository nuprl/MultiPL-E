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
function is_happy(s){
  var count = 0;
  var count2 = 0;
  var count3 = 0;
  var count4 = 0;
  var count5 = 0;
  var count6 = 0;
  var count7 = 0;
  var count8 = 0;
  var count9 = 0;
  var count10 = 0;
  var count11 = 0;
  var count12 = 0;
  var count13 = 0;
  var count14 = 0;
  var count15 = 0;
  var count16 = 0;
  var count17 = 0;
  var count18 = 0;
  var count19 = 0;
  var count20 = 0;
  var count21 = 0;
  var count22 = 0;
  var count23 = 0;
  var count24 = 0;
  var count25 = 0;
  var count26 = 0;
  var count27 = 0;
  var count28 = 0;
  var count29 = 0;
  var count30 = 0;
  var count31 = 0;
  var count32 = 0;
  var count33 = 0;
  var count34 = 0;
  var count35 = 0;
  var count36 = 0;
  var count37 = 0;
  var count38 = 0;
  var count39 = 0;
  var count40 = 0;
  var count41 = 0;
  var count42 = 0;
  var count43 = 0;
  var count44 = 0;
  var count45 = 0;
  var count46 = 0;
  var count47 = 0;
  var count48 = 0;
  var count49 = 0;
  var count50 = 0;
  var count51 = 0;
  var count52 = 0;
  var count53 = 0;
  var count54 = 0;
  var count55 = 0;
  var count56 = 0;
  var count57 = 0;
  var count58 = 0;
  var count59 = 0;
  var count60 = 0;
  var count61 = 0;
  var count62 = 0;
  var count63

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