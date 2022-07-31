//Given an integer. return a tuple that has the number of even and odd digits respectively.
// Example:
// even_odd_count(-12) ==> (1, 1)
// even_odd_count(123) ==> (1, 2)
function even_odd_count(num: number): [number, number] {
    let even: number = 0;
    let odd: number = 0;
    while (num > 0) {
        if (num % 2 === 0) {
            even++;
        } else {
            odd++;
        }
        num = Math.floor(num / 10);
    }
    return [even, odd];
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = even_odd_count;
  assert.deepEqual(candidate(7),[0, 1]);
  assert.deepEqual(candidate(-78),[1, 1]);
  assert.deepEqual(candidate(3452),[2, 2]);
  assert.deepEqual(candidate(346211),[3, 3]);
  assert.deepEqual(candidate(-345821),[3, 3]);
  assert.deepEqual(candidate(-2),[1, 0]);
  assert.deepEqual(candidate(-45347),[2, 3]);
  assert.deepEqual(candidate(0),[1, 0]);
}

test();