//Return 2^n modulo p (be aware of numerics).
// >>> modp(3, 5)
// 3
// >>> modp(1101, 101)
// 2
// >>> modp(0, 101)
// 1
// >>> modp(3, 11)
// 8
// >>> modp(100, 101)
// 1
function modp(n, p){
    if(n == 0) return 1;
    var result = modp(n >> 1, p);
    result = (result * result) % p;
    if(n & 1) result = (result * p) % p;
    return result;
}


const assert = require('node:assert');


function test() {
  let candidate = modp;
  assert.deepEqual(candidate(3, 5),3);
  assert.deepEqual(candidate(1101, 101),2);
  assert.deepEqual(candidate(0, 101),1);
  assert.deepEqual(candidate(3, 11),8);
  assert.deepEqual(candidate(100, 101),1);
  assert.deepEqual(candidate(30, 5),4);
  assert.deepEqual(candidate(31, 5),3);
}

test();