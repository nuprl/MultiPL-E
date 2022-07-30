//Create a function that takes 3 numbers.
// Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
// Returns false in any other cases.
// Examples
// any_int(5, 2, 7) ➞ True
// any_int(3, 2, 2) ➞ False
// any_int(3, -2, 1) ➞ True
// any_int(3.6, -2.2, 2) ➞ False
function any_int(x: number, y: number, z: number): boolean {
    let sum = x + y + z;
    return (x == sum - y - z || y == sum - x - z || z == sum - x - y) && (x % 1 == 0 && y % 1 == 0 && z % 1 == 0);
}
console.log(any_int(5, 2, 7));
console.log(any_int(3, 2, 2));
console.log(any_int(3, -2, 1));
console.log(any_int(3.6, -2.2, 2));


declare var require: any;
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