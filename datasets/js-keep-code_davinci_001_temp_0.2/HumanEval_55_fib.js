//Return n-th Fibonacci number.
// >>> fib(10)
// 55
// >>> fib(1)
// 1
// >>> fib(8)
// 21
function fib(n){
    if(n<=1){
        return n;
    }
    return fib(n-1)+fib(n-2);
}


const assert = require('node:assert');


function test() {
  let candidate = fib;
  assert.deepEqual(candidate(10),55);
  assert.deepEqual(candidate(1),1);
  assert.deepEqual(candidate(8),21);
  assert.deepEqual(candidate(11),89);
  assert.deepEqual(candidate(12),144);
}

test();