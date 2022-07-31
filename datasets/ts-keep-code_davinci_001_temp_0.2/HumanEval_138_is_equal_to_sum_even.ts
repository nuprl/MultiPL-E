//Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
// Example
// is_equal_to_sum_even(4) == False
// is_equal_to_sum_even(6) == False
// is_equal_to_sum_even(8) == True
function is_equal_to_sum_even(n: number): boolean {
    let sum = 0;
    for (let i = 0; i < n; i++) {
        sum += i * 2;
    }
    return sum === n;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = is_equal_to_sum_even;
  assert.deepEqual(candidate(4),false);
  assert.deepEqual(candidate(6),false);
  assert.deepEqual(candidate(8),true);
  assert.deepEqual(candidate(10),true);
  assert.deepEqual(candidate(11),false);
  assert.deepEqual(candidate(12),true);
  assert.deepEqual(candidate(13),false);
  assert.deepEqual(candidate(16),true);
}

test();