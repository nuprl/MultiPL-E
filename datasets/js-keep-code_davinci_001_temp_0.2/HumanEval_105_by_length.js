//Given an array of integers, sort the integers that are between 1 and 9 inclusive,
// reverse the resulting array, and then replace each digit by its corresponding name from
// "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
// For example:
// arr = [2, 1, 1, 4, 5, 8, 2, 3]   
// -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
// -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
// return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
// If the array is empty, return an empty array:
// arr = []
// return []
// If the array has any strange number ignore it:
// arr = [1, -1 , 55] 
// -> sort arr -> [-1, 1, 55]
// -> reverse arr -> [55, 1, -1]
// return = ['One']
function by_length(arr){
    let arr1 = [];
    let arr2 = [];
    let arr3 = [];
    let arr4 = [];
    let arr5 = [];
    let arr6 = [];
    let arr7 = [];
    let arr8 = [];
    let arr9 = [];
    let arr10 = [];
    let arr11 = [];
    let arr12 = [];
    let arr13 = [];
    let arr14 = [];
    let arr15 = [];
    let arr16 = [];
    let arr17 = [];
    let arr18 = [];
    let arr19 = [];
    let arr20 = [];
    let arr21 = [];
    let arr22 = [];
    let arr23 = [];
    let arr24 = [];
    let arr25 = [];
    let arr26 = [];
    let arr27 = [];
    let arr28 = [];
    let arr29 = [];
    let arr30 = [];
    let arr31 = [];
    let arr32 = [];
    let arr33 = [];
    let arr34 = [];
    let arr35 = [];
    let arr36 = [];
    let arr37 = [];
    let arr38 = [];
    let arr39 = [];
    let arr40 = [];
    let arr41 = [];
    let arr42 = [];
    let arr43 = [];
    let arr44 = [];
    let arr45 = [];
    let arr46 = [];
    let arr47 = [];
    let arr48 = [];
    let arr49 = [];
    let arr50 = [];
    let arr51 = [];
    let arr52 = [];
    let arr53 = [];
    let arr54 = [];
    let arr55 = [];
    let arr56 = [];
    let arr57 = [];
    let arr58 = [];
    let arr59 = [];
    let arr60 = [];
    let arr61 = [];
    let arr62 = [];
    let arr63 = [];
    let arr64 = [];
    let arr65 = [];
    let arr66 = [];
    let arr67 = [];
    let arr68 = [];
    let arr69 = [];
    let arr70 = [];
    let arr71 = [];
    let

const assert = require('node:assert');


function test() {
  let candidate = by_length;
  assert.deepEqual(candidate([2, 1, 1, 4, 5, 8, 2, 3]),["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]);
  assert.deepEqual(candidate([]),[]);
  assert.deepEqual(candidate([1, -1, 55]),["One"]);
  assert.deepEqual(candidate([1, -1, 3, 2]),["Three", "Two", "One"]);
  assert.deepEqual(candidate([9, 4, 8]),["Nine", "Eight", "Four"]);
}

test();