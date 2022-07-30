//Implement the function f that takes n as a parameter,
// and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
// or the sum of numbers from 1 to i otherwise.
// i starts from 1.
// the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
// Example:
// f(5) == [1, 2, 6, 24, 15]
function f(n: number): number[] {
    let result: number[] = [];
    for (let i = 1; i <= n; i++) {
        if (i % 2 === 0) {
            result.push(factorial(i));
        } else {
            result.push(sum(i));
        }
    }
    return result;
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = f;
  assert.deepEqual(candidate(5),[1, 2, 6, 24, 15]);
  assert.deepEqual(candidate(7),[1, 2, 6, 24, 15, 720, 28]);
  assert.deepEqual(candidate(1),[1]);
  assert.deepEqual(candidate(3),[1, 2, 6]);
}

test();