//You are given a positive integer n. You have to create an integer array a of length n.
// For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
// Return the number of triples (a[i], a[j], a[k]) of a where i < j < k, 
// and a[i] + a[j] + a[k] is a multiple of 3.
// Example :
// Input: n = 5
// Output: 1
// Explanation: 
// a = [1, 3, 7, 13, 21]
// The only valid triple is (1, 7, 13).
function get_max_triples(n: number): number {
    let a: number[] = [];
    for (let i = 1; i <= n; i++) {
        a.push(i * i - i + 1);
    }
    let count = 0;
    for (let i = 0; i < n; i++) {
        for (let j = i + 1; j < n; j++) {
            for (let k = j + 1; k < n; k++) {
                if (a[i] + a[j] + a[k] % 3 === 0) {
                    count++;
                }
            }
        }
    }
    return count;
}
console.log(get_max_triples(5));
console.log(get_max_triples(10));
console.log(get_max_triples(20));
console.log(get_max_triples(50));
console.log(get_max_triples(100));
console.log(get_max_triples(200));
console.log(get_max_triples(500));
console.log(get_max_triples(1000));
console.log(get_max_triples(2000));
console.log(get_max_triples(5000));
console.log(get_max_triples(10000));
console.log(get_max_triples(20000));
console.log(get_max_triples(50000));
console.log(get_max_triples(100000));
console.log(get_max_triples(200000));
console.log(get_max_triples(500000));
console.log(get_max_triples(1000000));
console.log(get_max_triples(2000000));
console.log(get_max_triples(5000000));
console.log(get_max_triples(10000000));
console.log(get_max_triples(20000000));
console.log(get_max_triples(50000000));
console.log(get_max_triples(100000000));
console.log(get_max_triples(200000000));
console.log

declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = get_max_triples;
  assert.deepEqual(candidate(5),1);
  assert.deepEqual(candidate(6),4);
  assert.deepEqual(candidate(10),36);
  assert.deepEqual(candidate(100),53361);
}

test();