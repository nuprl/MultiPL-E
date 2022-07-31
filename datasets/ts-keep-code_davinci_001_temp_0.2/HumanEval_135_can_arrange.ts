//Create a function which returns the largest index of an element which
// is not greater than or equal to the element immediately preceding it. If
// no such element exists then return -1. The given array will not contain
// duplicate values.
// Examples:
// can_arrange([1,2,4,3,5]) = 3
// can_arrange([1,2,3]) = -1
function can_arrange(arr: number[]): number {
  let i = 0;
  let j = 1;
  let k = 0;
  let l = 1;
  let m = 0;
  let n = 1;
  let o = 0;
  let p = 1;
  let q = 0;
  let r = 1;
  let s = 0;
  let t = 1;
  let u = 0;
  let v = 1;
  let w = 0;
  let x = 1;
  let y = 0;
  let z = 1;
  let a = 0;
  let b = 1;
  let c = 0;
  let d = 1;
  let e = 0;
  let f = 1;
  let g = 0;
  let h = 1;
  let i1 = 0;
  let j1 = 1;
  let k1 = 0;
  let l1 = 1;
  let m1 = 0;
  let n1 = 1;
  let o1 = 0;
  let p1 = 1;
  let q1 = 0;
  let r1 = 1;
  let s1 = 0;
  let t1 = 1;
  let u1 = 0;
  let v1 = 1;
  let w1 = 0;
  let x1 = 1;
  let y1 = 0;
  let z1 = 1;
  let a1 = 0;
  let b1 = 1;
  let c1 = 0;
  let d1 = 1;
  let e1 = 0;
  let f1 = 1;
  let g1 = 0;
  let h1 = 1;
  let i2 = 0;
  let j2 = 1;
  let k2 = 0;
  let l2 = 1;
  let m2 = 0;
  let n2 = 1;
  let o2 = 0;
  let p2 = 1;
  let q2 = 0;
  let r2 = 1;
  let s2 = 0;
  let t2 = 1;
  let u2 = 0;
  let v2 =

declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = can_arrange;
  assert.deepEqual(candidate([1, 2, 4, 3, 5]),3);
  assert.deepEqual(candidate([1, 2, 4, 5]),-1);
  assert.deepEqual(candidate([1, 4, 2, 5, 6, 7, 8, 9, 10]),2);
  assert.deepEqual(candidate([4, 8, 5, 7, 3]),4);
  assert.deepEqual(candidate([]),-1);
}

test();