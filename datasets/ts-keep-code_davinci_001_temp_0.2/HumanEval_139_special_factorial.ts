//The Brazilian factorial is defined as:
// brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
// where n > 0
// For example:
// >>> special_factorial(4)
// 288
// The function will receive an integer as input and should return the special
// factorial of this integer.
function special_factorial(n: number): number {
    if (n <= 1) {
        return 1;
    }
    return n * special_factorial(n - 1);
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = special_factorial;
  assert.deepEqual(candidate(4),288);
  assert.deepEqual(candidate(5),34560);
  assert.deepEqual(candidate(7),125411328000);
  assert.deepEqual(candidate(1),1);
}

test();