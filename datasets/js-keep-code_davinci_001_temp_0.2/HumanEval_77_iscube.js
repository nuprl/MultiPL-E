//Write a function that takes an integer a and returns True 
// if this ingeger is a cube of some integer number.
// Note: you may assume the input is always valid.
// Examples:
// iscube(1) ==> True
// iscube(2) ==> False
// iscube(-1) ==> True
// iscube(64) ==> True
// iscube(0) ==> True
// iscube(180) ==> False
function iscube(a){
    if(Math.pow(a,1/3)%1==0){
        return true;
    }
    else{
        return false;
    }
}


const assert = require('node:assert');


function test() {
  let candidate = iscube;
  assert.deepEqual(candidate(1),true);
  assert.deepEqual(candidate(2),false);
  assert.deepEqual(candidate(-1),true);
  assert.deepEqual(candidate(64),true);
  assert.deepEqual(candidate(180),false);
  assert.deepEqual(candidate(1000),true);
  assert.deepEqual(candidate(0),true);
  assert.deepEqual(candidate(1729),false);
}

test();