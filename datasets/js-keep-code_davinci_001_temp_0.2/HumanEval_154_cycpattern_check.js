//You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
// cycpattern_check("abcd","abd") => False
// cycpattern_check("hello","ell") => True
// cycpattern_check("whassup","psus") => False
// cycpattern_check("abab","baa") => True
// cycpattern_check("efef","eeff") => False
// cycpattern_check("himenss","simen") => True
function cycpattern_check(a, b){
  var a_arr = a.split('');
  var b_arr = b.split('');
  var a_len = a_arr.length;
  var b_len = b_arr.length;
  var b_arr_rotated = [];
  var i = 0;
  var j = 0;
  var k = 0;
  var found = false;
  var found_rotated = false;
  var found_rotated_index = 0;
  var found_index = 0;
  var found_index_rotated = 0;
  var found_index_rotated_index = 0;
  var found_index_index = 0;
  var found_index_index_rotated = 0;
  var found_index_index_rotated_index = 0;
  var found_index_index_index = 0;
  var found_index_index_index_rotated = 0;
  var found_index_index_index_rotated_index = 0;
  var found_index_index_index_index = 0;
  var found_index_index_index_index_rotated = 0;
  var found_index_index_index_index_rotated_index = 0;
  var found_index_index_index_index_index = 0;
  var found_index_index_index_index_index_rotated = 0;
  var found_index_index_index_index_index_rotated_index = 0;
  var found_index_index_index_index_index_index = 0;
  var found_index_index_index_index_index_index_rotated = 0;
  var found_index_index_index_index_index_index_rotated_index = 0;
  var found_index_index_index_index_index_index_index = 0;
  var found_index_index_index_index_index_index_index_rotated = 0;
  var found_index_index_index_index_index_index_index_rotated_index = 0;
  var found_index_index_index_index_index_index

const assert = require('node:assert');


function test() {
  let candidate = cycpattern_check;
  assert.deepEqual(candidate("xyzw", "xyw"),false);
  assert.deepEqual(candidate("yello", "ell"),true);
  assert.deepEqual(candidate("whattup", "ptut"),false);
  assert.deepEqual(candidate("efef", "fee"),true);
  assert.deepEqual(candidate("abab", "aabb"),false);
  assert.deepEqual(candidate("winemtt", "tinem"),true);
}

test();