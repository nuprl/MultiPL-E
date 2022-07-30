//Implement a function that takes an non-negative integer and returns an array of the first n
// integers that are prime numbers and less than n.
// for example:
// count_up_to(5) => [2,3]
// count_up_to(11) => [2,3,5,7]
// count_up_to(0) => []
// count_up_to(20) => [2,3,5,7,11,13,17,19]
// count_up_to(1) => []
// count_up_to(18) => [2,3,5,7,11,13,17]
function count_up_to(n) {
    var primes = [];
    for (var i = 2; i < n; i++) {
        if (isPrime(i)) {
            primes.push(i);
        }
    }
    return primes;
}
var assert = require('node:assert');
function test() {
    var candidate = count_up_to;
    assert.deepEqual(candidate(5), [2, 3]);
    assert.deepEqual(candidate(6), [2, 3, 5]);
    assert.deepEqual(candidate(7), [2, 3, 5]);
    assert.deepEqual(candidate(10), [2, 3, 5, 7]);
    assert.deepEqual(candidate(0), []);
    assert.deepEqual(candidate(22), [2, 3, 5, 7, 11, 13, 17, 19]);
    assert.deepEqual(candidate(1), []);
    assert.deepEqual(candidate(18), [2, 3, 5, 7, 11, 13, 17]);
    assert.deepEqual(candidate(47), [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43]);
    assert.deepEqual(candidate(101), [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]);
}
test();
