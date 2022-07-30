//Write a function that returns true if the given number is the multiplication of 3 prime numbers
// and false otherwise.
// Knowing that (a) is less then 100. 
// Example:
// is_multiply_prime(30) == True
// 30 = 2 * 3 * 5
function is_multiply_prime(a: number): boolean {
    for (let i = 2; i < a; i++) {
        if (a % i === 0) {
            return false;
        }
    }
    return true;
}
console.log(is_multiply_prime(30));


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = is_multiply_prime;
  assert.deepEqual(candidate(5),false);
  assert.deepEqual(candidate(30),true);
  assert.deepEqual(candidate(8),true);
  assert.deepEqual(candidate(10),false);
  assert.deepEqual(candidate(125),true);
  assert.deepEqual(candidate(105),true);
  assert.deepEqual(candidate(126),false);
  assert.deepEqual(candidate(729),false);
  assert.deepEqual(candidate(891),false);
  assert.deepEqual(candidate(1001),true);
}

test();