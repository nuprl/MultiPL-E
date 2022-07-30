//Create a function which takes a string representing a file's name, and returns
// 'Yes' if the the file's name is valid, and returns 'No' otherwise.
// A file's name is considered to be valid if and only if all the following conditions 
// are met:
// - There should not be more than three digits ('0'-'9') in the file's name.
// - The file's name contains exactly one dot '.'
// - The substring before the dot should not be empty, and it starts with a letter from 
// the latin alphapet ('a'-'z' and 'A'-'Z').
// - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
// Examples:
// file_name_check("example.txt") # => 'Yes'
// file_name_check("1example.dll") # => 'No' (the name should start with a latin alphapet letter)
function file_name_check(file_name){
    // your code here
    var regex = /^[a-zA-Z]\w*\.[a-zA-Z]{3}$/;
    return regex.test(file_name);
}


const assert = require('node:assert');


function test() {
  let candidate = file_name_check;
  assert.deepEqual(candidate("example.txt"),"Yes");
  assert.deepEqual(candidate("1example.dll"),"No");
  assert.deepEqual(candidate("s1sdf3.asd"),"No");
  assert.deepEqual(candidate("K.dll"),"Yes");
  assert.deepEqual(candidate("MY16FILE3.exe"),"Yes");
  assert.deepEqual(candidate("His12FILE94.exe"),"No");
  assert.deepEqual(candidate("_Y.txt"),"No");
  assert.deepEqual(candidate("?aREYA.exe"),"No");
  assert.deepEqual(candidate("/this_is_valid.dll"),"No");
  assert.deepEqual(candidate("this_is_valid.wow"),"No");
  assert.deepEqual(candidate("this_is_valid.txt"),"Yes");
  assert.deepEqual(candidate("this_is_valid.txtexe"),"No");
  assert.deepEqual(candidate("#this2_i4s_5valid.ten"),"No");
  assert.deepEqual(candidate("@this1_is6_valid.exe"),"No");
  assert.deepEqual(candidate("this_is_12valid.6exe4.txt"),"No");
  assert.deepEqual(candidate("all.exe.txt"),"No");
  assert.deepEqual(candidate("I563_No.exe"),"Yes");
  assert.deepEqual(candidate("Is3youfault.txt"),"Yes");
  assert.deepEqual(candidate("no_one#knows.dll"),"Yes");
  assert.deepEqual(candidate("1I563_Yes3.exe"),"No");
  assert.deepEqual(candidate("I563_Yes3.txtt"),"No");
  assert.deepEqual(candidate("final..txt"),"No");
  assert.deepEqual(candidate("final132"),"No");
  assert.deepEqual(candidate("_f4indsartal132."),"No");
  assert.deepEqual(candidate(".txt"),"No");
  assert.deepEqual(candidate("s."),"No");
}

test();