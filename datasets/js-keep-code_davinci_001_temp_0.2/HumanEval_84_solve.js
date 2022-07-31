//Given a positive integer N, return the total sum of its digits in binary.
// Example
// For N = 1000, the sum of digits will be 1 the output should be "1".
// For N = 150, the sum of digits will be 6 the output should be "110".
// For N = 147, the sum of digits will be 12 the output should be "1100".
// Variables:
// @N integer
// Constraints: 0 ≤ N ≤ 10000.
// Output:
// a string of binary number
function solve(N){
    let binary = N.toString(2);
    let sum = 0;
    for (let i = 0; i < binary.length; i++) {
        sum += +binary[i];
    }
    return sum;
}


const assert = require('node:assert');


function test() {
  let candidate = solve;
  assert.deepEqual(candidate(1000),"1");
  assert.deepEqual(candidate(150),"110");
  assert.deepEqual(candidate(147),"1100");
  assert.deepEqual(candidate(333),"1001");
  assert.deepEqual(candidate(963),"10010");
}

test();