//Return the largest prime factor of n. Assume n > 1 and is not a prime.
// >>> largest_prime_factor(13195)
// 29
// >>> largest_prime_factor(2048)
// 2
function largest_prime_factor(n) {
    var prime = 2;
    while (n > prime) {
        if (n % prime === 0) {
            n = n / prime;
        }
        else {
            prime++;
        }
    }
    return prime;
}
var assert = require('node:assert');
function test() {
    var candidate = largest_prime_factor;
    assert.deepEqual(candidate(15), 5);
    assert.deepEqual(candidate(27), 3);
    assert.deepEqual(candidate(63), 7);
    assert.deepEqual(candidate(330), 11);
    assert.deepEqual(candidate(13195), 29);
}
test();
