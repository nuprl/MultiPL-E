//You are given two intervals,
// where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
// The given intervals are closed which means that the interval (start, end)
// includes both start and end.
// For each given interval, it is assumed that its start is less or equal its end.
// Your task is to determine whether the length of intersection of these two 
// intervals is a prime number.
// Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
// which its length is 1, which not a prime number.
// If the length of the intersection is a prime number, return "YES",
// otherwise, return "NO".
// If the two intervals don't intersect, return "NO".
// [input/output] samples:
// intersection((1, 2), (2, 3)) ==> "NO"
// intersection((-1, 1), (0, 4)) ==> "NO"
// intersection((-3, -1), (-5, 5)) ==> "YES"
function intersection(interval1: [number, number], interval2: [number, number]): string {
    let [start1, end1] = interval1;
    let [start2, end2] = interval2;
    let start = Math.max(start1, start2);
    let end = Math.min(end1, end2);
    if (start > end) {
        return "NO";
    }
    let length = end - start;
    if (length < 2) {
        return "NO";
    }
    let isPrime = true;
    for (let i = 2; i <= Math.sqrt(length); i++) {
        if (length % i === 0) {
            isPrime = false;
            break;
        }
    }
    return isPrime ? "YES" : "NO";
}

console.log(intersection([1, 2], [2, 3]));
console.log(intersection([-1, 1], [0, 4]));
console.log(intersection([-3, -1], [-5, 5]));

declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = intersection;
  assert.deepEqual(candidate([1, 2], [2, 3]),"NO");
  assert.deepEqual(candidate([-1, 1], [0, 4]),"NO");
  assert.deepEqual(candidate([-3, -1], [-5, 5]),"YES");
  assert.deepEqual(candidate([-2, 2], [-4, 0]),"YES");
  assert.deepEqual(candidate([-11, 2], [-1, -1]),"NO");
  assert.deepEqual(candidate([1, 2], [3, 5]),"NO");
  assert.deepEqual(candidate([1, 2], [1, 2]),"NO");
  assert.deepEqual(candidate([-2, -2], [-3, -2]),"NO");
}

test();