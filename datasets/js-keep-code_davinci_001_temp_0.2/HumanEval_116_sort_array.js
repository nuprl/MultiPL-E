//In this Kata, you have to sort an array of non-negative integers according to
// number of ones in their binary representation in ascending order.
// For similar number of ones, sort based on decimal value.
// It must be implemented like this:
// >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
// >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
// >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
function sort_array(arr){
    var arr2 = arr.map(function(x){
        return [x.toString(2).split('').reduce(function(a,b){return a+b}), x]
    })
    arr2.sort(function(a,b){
        if(a[0] == b[0]){
            return a[1] - b[1]
        }
        return a[0] - b[0]
    })
    return arr2.map(function(x){return x[1]})
}


const assert = require('node:assert');


function test() {
  let candidate = sort_array;
  assert.deepEqual(candidate([1, 5, 2, 3, 4]),[1, 2, 4, 3, 5]);
  assert.deepEqual(candidate([-2, -3, -4, -5, -6]),[-4, -2, -6, -5, -3]);
  assert.deepEqual(candidate([1, 0, 2, 3, 4]),[0, 1, 2, 4, 3]);
  assert.deepEqual(candidate([]),[]);
  assert.deepEqual(candidate([2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4]),[2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77]);
  assert.deepEqual(candidate([3, 6, 44, 12, 32, 5]),[32, 3, 5, 6, 12, 44]);
  assert.deepEqual(candidate([2, 4, 8, 16, 32]),[2, 4, 8, 16, 32]);
  assert.deepEqual(candidate([2, 4, 8, 16, 32]),[2, 4, 8, 16, 32]);
}

test();