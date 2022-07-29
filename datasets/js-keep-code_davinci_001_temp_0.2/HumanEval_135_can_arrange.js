//Create a function which returns the largest index of an element which
// is not greater than or equal to the element immediately preceding it. If
// no such element exists then return -1. The given array will not contain
// duplicate values.
// Examples:
// can_arrange([1,2,4,3,5]) = 3
// can_arrange([1,2,3]) = -1
function can_arrange(arr){
    var i;
    for(i=0;i<arr.length-1;i++){
        if(arr[i]>arr[i+1]){
            return i;
        }
    }
    return -1;
}


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