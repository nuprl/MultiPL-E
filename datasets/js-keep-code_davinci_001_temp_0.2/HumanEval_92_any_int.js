//Create a function that takes 3 numbers.
// Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
// Returns false in any other cases.
// Examples
// any_int(5, 2, 7) ➞ True
// any_int(3, 2, 2) ➞ False
// any_int(3, -2, 1) ➞ True
// any_int(3.6, -2.2, 2) ➞ False
function any_int(x, y, z){
    if(x == y + z || y == x + z || z == x + y){
        return true;
    }
    else{
        return false;
    }
}

const assert = require('node:assert');


function test() {
  let candidate = any_int;
  assert.deepEqual(candidate(2, 3, 1),true);
  assert.deepEqual(candidate(2.5, 2, 3),false);
  assert.deepEqual(candidate(1.5, 5, 3.5),false);
  assert.deepEqual(candidate(2, 6, 2),false);
  assert.deepEqual(candidate(4, 2, 2),true);
  assert.deepEqual(candidate(2.2, 2.2, 2.2),false);
  assert.deepEqual(candidate(-4, 6, 2),true);
  assert.deepEqual(candidate(2, 1, 1),true);
  assert.deepEqual(candidate(3, 4, 7),true);
  assert.deepEqual(candidate(3.0, 4, 7),false);
}

test();