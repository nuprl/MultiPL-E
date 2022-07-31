//Input is a space-delimited string of numberals from 'zero' to 'nine'.
// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
// Return the string with numbers sorted from smallest to largest
// >>> sort_numbers('three one five')
// 'one three five'
function sort_numbers(numbers: string): string {
    let nums: number[] = [];
    let num: number;
    let str: string;
    let i: number;
    let j: number;
    let k: number;
    let l: number;
    let m: number;
    let n: number;
    let o: number;
    let p: number;
    let q: number;
    let r: number;
    let s: number;
    let t: number;
    let u: number;
    let v: number;
    let w: number;
    let x: number;
    let y: number;
    let z: number;
    let a: number;
    let b: number;
    let c: number;
    let d: number;
    let e: number;
    let f: number;
    let g: number;
    let h: number;
    let i1: number;
    let j1: number;
    let k1: number;
    let l1: number;
    let m1: number;
    let n1: number;
    let o1: number;
    let p1: number;
    let q1: number;
    let r1: number;
    let s1: number;
    let t1: number;
    let u1: number;
    let v1: number;
    let w1: number;
    let x1: number;
    let y1: number;
    let z1: number;
    let a1: number;
    let b1: number;
    let c1: number;
    let d1: number;
    let e1: number;
    let f1: number;
    let g1: number;
    let h1: number;
    let i2: number;
    let j2: number;
    let k2: number;
    let l2: number;
    let m2: number;
    let n2: number;
    let o2: number;
    let p2: number;
    let q2: number;
    let r2: number;
    let s2:

declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = sort_numbers;
  assert.deepEqual(candidate(""),"");
  assert.deepEqual(candidate("three"),"three");
  assert.deepEqual(candidate("three five nine"),"three five nine");
  assert.deepEqual(candidate("five zero four seven nine eight"),"zero four five seven eight nine");
  assert.deepEqual(candidate("six five four three two one zero"),"zero one two three four five six");
}

test();