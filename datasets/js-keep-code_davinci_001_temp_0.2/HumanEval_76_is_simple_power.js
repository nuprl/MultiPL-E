//Your task is to write a function that returns true if a number x is a simple
// power of n and false in other cases.
// x is a simple power of n if n**int=x
// For example:
// is_simple_power(1, 4) => true
// is_simple_power(2, 2) => true
// is_simple_power(8, 2) => true
// is_simple_power(3, 2) => false
// is_simple_power(3, 1) => false
// is_simple_power(5, 3) => false
function is_simple_power(x, n){
  if (x === n) {
    return true;
  } else if (x % n === 0) {
    return is_simple_power(x / n, n);
  } else {
    return false;
  }
}


const assert = require('node:assert');


function test() {
  let candidate = is_simple_power;
  assert.deepEqual(candidate(16, 2),true);
  assert.deepEqual(candidate(143214, 16),false);
  assert.deepEqual(candidate(4, 2),true);
  assert.deepEqual(candidate(9, 3),true);
  assert.deepEqual(candidate(16, 4),true);
  assert.deepEqual(candidate(24, 2),false);
  assert.deepEqual(candidate(128, 4),false);
  assert.deepEqual(candidate(12, 6),false);
  assert.deepEqual(candidate(1, 1),true);
  assert.deepEqual(candidate(1, 12),true);
}

test();