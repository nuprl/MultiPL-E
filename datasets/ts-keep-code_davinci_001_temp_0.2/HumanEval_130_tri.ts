//Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
// the last couple centuries. However, what people don't know is Tribonacci sequence.
// Tribonacci sequence is defined by the recurrence:
// tri(1) = 3
// tri(n) = 1 + n / 2, if n is even.
// tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
// For example:
// tri(2) = 1 + (2 / 2) = 2
// tri(4) = 3
// tri(3) = tri(2) + tri(1) + tri(4)
// = 2 + 3 + 3 = 8 
// You are given a non-negative integer number n, you have to a return a list of the 
// first n + 1 numbers of the Tribonacci sequence.
// Examples:
// tri(3) = [1, 3, 2, 8]
function tri(n: number): number[] {
    let result: number[] = [];
    for (let i = 0; i <= n; i++) {
        if (i == 0) {
            result.push(3);
        } else if (i == 1) {
            result.push(1);
        } else if (i == 2) {
            result.push(2);
        } else {
            result.push(result[i - 1] + result[i - 2] + result[i - 3]);
        }
    }
    return result;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = tri;
  assert.deepEqual(candidate(3),[1, 3, 2, 8]);
  assert.deepEqual(candidate(4),[1, 3, 2, 8, 3]);
  assert.deepEqual(candidate(5),[1, 3, 2, 8, 3, 15]);
  assert.deepEqual(candidate(6),[1, 3, 2, 8, 3, 15, 4]);
  assert.deepEqual(candidate(7),[1, 3, 2, 8, 3, 15, 4, 24]);
  assert.deepEqual(candidate(8),[1, 3, 2, 8, 3, 15, 4, 24, 5]);
  assert.deepEqual(candidate(9),[1, 3, 2, 8, 3, 15, 4, 24, 5, 35]);
  assert.deepEqual(candidate(20),[1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11]);
  assert.deepEqual(candidate(0),[1]);
  assert.deepEqual(candidate(1),[1, 3]);
}

test();