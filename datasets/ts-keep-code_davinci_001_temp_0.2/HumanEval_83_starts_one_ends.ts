//Given a positive integer n, return the count of the numbers of n-digit
// positive integers that start or end with 1.
function starts_one_ends(n: number): number {
    let count = 0;
    for (let i = 1; i <= n; i++) {
        let num = i.toString();
        if (num.charAt(0) === '1' || num.charAt(num.length - 1) === '1') {
            count++;
        }
    }
    return count;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = starts_one_ends;
  assert.deepEqual(candidate(1),1);
  assert.deepEqual(candidate(2),18);
  assert.deepEqual(candidate(3),180);
  assert.deepEqual(candidate(4),1800);
  assert.deepEqual(candidate(5),18000);
}

test();