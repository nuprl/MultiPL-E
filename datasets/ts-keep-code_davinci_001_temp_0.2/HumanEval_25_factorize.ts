//Return list of prime factors of given integer in the order from smallest to largest.
// Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
// Input number should be equal to the product of all factors
// >>> factorize(8)
// [2, 2, 2]
// >>> factorize(25)
// [5, 5]
// >>> factorize(70)
// [2, 5, 7]
function factorize(n: number): number[] {
    var factors: number[] = [];
    var i: number = 2;
    while (n > 1) {
        while (n % i == 0) {
            factors.push(i);
            n /= i;
        }
        i++;
    }
    return factors;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = factorize;
  assert.deepEqual(candidate(2),[2]);
  assert.deepEqual(candidate(4),[2, 2]);
  assert.deepEqual(candidate(8),[2, 2, 2]);
  assert.deepEqual(candidate(57),[3, 19]);
  assert.deepEqual(candidate(3249),[3, 3, 19, 19]);
  assert.deepEqual(candidate(185193),[3, 3, 3, 19, 19, 19]);
  assert.deepEqual(candidate(20577),[3, 19, 19, 19]);
  assert.deepEqual(candidate(18),[2, 3, 3]);
}

test();