//prime_fib returns n-th number that is a Fibonacci number and it's also prime.
// >>> prime_fib(1)
// 2
// >>> prime_fib(2)
// 3
// >>> prime_fib(3)
// 5
// >>> prime_fib(4)
// 13
// >>> prime_fib(5)
// 89
function prime_fib(n: number): number {
    let fib = fibonacci(n);
    if (isPrime(fib)) {
        return fib;
    } else {
        return prime_fib(n + 1);
    }
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = prime_fib;
  assert.deepEqual(candidate(1),2);
  assert.deepEqual(candidate(2),3);
  assert.deepEqual(candidate(3),5);
  assert.deepEqual(candidate(4),13);
  assert.deepEqual(candidate(5),89);
  assert.deepEqual(candidate(6),233);
  assert.deepEqual(candidate(7),1597);
  assert.deepEqual(candidate(8),28657);
  assert.deepEqual(candidate(9),514229);
  assert.deepEqual(candidate(10),433494437);
}

test();