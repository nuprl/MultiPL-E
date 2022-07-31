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
function iscube(a: number): boolean {
    if (a == 0) {
        return true;
    }
    if (a < 0) {
        return false;
    }
    let b = Math.pow(a, 1 / 3);
    return b == Math.round(b);
}
console.log(iscube(1));
console.log(iscube(2));
console.log(iscube(-1));
console.log(iscube(64));
console.log(iscube(0));
console.log(iscube(180));


declare var require: any;
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