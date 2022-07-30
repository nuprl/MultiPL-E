//Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
// should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
// alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
// Examples
// split_words("Hello world!") ➞ ["Hello", "world!"]
// split_words("Hello,world!") ➞ ["Hello", "world!"]
// split_words("abcdef") == 3
function split_words(txt: string): string[]| number {
    let res: string[] = [];
    let i: number = 0;
    let j: number = 0;
    let k: number = 0;
    let l: number = 0;
    let m: number = 0;
    let n: number = 0;
    let o: number = 0;
    let p: number = 0;
    let q: number = 0;
    let r: number = 0;
    let s: number = 0;
    let t: number = 0;
    let u: number = 0;
    let v: number = 0;
    let w: number = 0;
    let x: number = 0;
    let y: number = 0;
    let z: number = 0;
    let a: number = 0;
    let b: number = 0;
    let c: number = 0;
    let d: number = 0;
    let e: number = 0;
    let f: number = 0;
    let g: number = 0;
    let h: number = 0;
    let i1: number = 0;
    let j1: number = 0;
    let k1: number = 0;
    let l1: number = 0;
    let m1: number = 0;
    let n1: number = 0;
    let o1: number = 0;
    let p1: number = 0;
    let q1: number = 0;
    let r1: number = 0;
    let s1: number = 0;
    let t1: number = 0;
    let u1: number = 0;
    let v1: number = 0;
    let w1: number = 0;
    let x1: number = 0;
    let y1: number = 0;
    let z1: number = 0;
    let a1: number = 0;
    let b1: number = 0;
    let c1: number = 0;
    let d1: number = 0;
    let e1: number = 0;
    let f1: number = 0;
    let g1: number = 0;
    let h1: number

declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = split_words;
  assert.deepEqual(candidate("Hello world!"),["Hello", "world!"]);
  assert.deepEqual(candidate("Hello,world!"),["Hello", "world!"]);
  assert.deepEqual(candidate("Hello world,!"),["Hello", "world,!"]);
  assert.deepEqual(candidate("Hello,Hello,world !"),["Hello,Hello,world", "!"]);
  assert.deepEqual(candidate("abcdef"),3);
  assert.deepEqual(candidate("aaabb"),2);
  assert.deepEqual(candidate("aaaBb"),1);
  assert.deepEqual(candidate(""),0);
}

test();