//For a given number n, find the largest number that divides n evenly, smaller than n
// >>> largest_divisor(15)
// 5
function largest_divisor(n: number): number {
    let divisor = n - 1;
    while (n % divisor !== 0) {
        divisor--;
    }
    return divisor;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = largest_divisor;
  assert.deepEqual(candidate(3),1);
  assert.deepEqual(candidate(7),1);
  assert.deepEqual(candidate(10),5);
  assert.deepEqual(candidate(100),50);
  assert.deepEqual(candidate(49),7);
}

test();