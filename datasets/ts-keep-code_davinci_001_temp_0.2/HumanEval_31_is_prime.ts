//Return true if a given number is prime, and false otherwise.
// >>> is_prime(6)
// False
// >>> is_prime(101)
// True
// >>> is_prime(11)
// True
// >>> is_prime(13441)
// True
// >>> is_prime(61)
// True
// >>> is_prime(4)
// False
// >>> is_prime(1)
// False
function is_prime(n: number): boolean {
    if (n < 2) {
        return false;
    }
    for (let i = 2; i < n; i++) {
        if (n % i === 0) {
            return false;
        }
    }
    return true;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = is_prime;
  assert.deepEqual(candidate(6),false);
  assert.deepEqual(candidate(101),true);
  assert.deepEqual(candidate(11),true);
  assert.deepEqual(candidate(13441),true);
  assert.deepEqual(candidate(61),true);
  assert.deepEqual(candidate(4),false);
  assert.deepEqual(candidate(1),false);
  assert.deepEqual(candidate(5),true);
  assert.deepEqual(candidate(11),true);
  assert.deepEqual(candidate(17),true);
  assert.deepEqual(candidate(85),false);
  assert.deepEqual(candidate(77),false);
  assert.deepEqual(candidate(255379),false);
}

test();