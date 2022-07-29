//pairs_sum_to_zero takes a list of integers as an input.
// it returns True if there are two distinct elements in the list that
// sum to zero, and False otherwise.
// >>> pairs_sum_to_zero([1, 3, 5, 0])
// False
// >>> pairs_sum_to_zero([1, 3, -2, 1])
// False
// >>> pairs_sum_to_zero([1, 2, 3, 7])
// False
// >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
// True
// >>> pairs_sum_to_zero([1])
// False
function pairs_sum_to_zero(l){
    for (var i = 0; i < l.length; i++){
        for (var j = 0; j < l.length; j++){
            if (l[i] + l[j] === 0 && i !== j){
                return true;
            }
        }
    }
    return false;
}


const assert = require('node:assert');


function test() {
  let candidate = pairs_sum_to_zero;
  assert.deepEqual(candidate([1, 3, 5, 0]),false);
  assert.deepEqual(candidate([1, 3, -2, 1]),false);
  assert.deepEqual(candidate([1, 2, 3, 7]),false);
  assert.deepEqual(candidate([2, 4, -5, 3, 5, 7]),true);
  assert.deepEqual(candidate([1]),false);
  assert.deepEqual(candidate([-3, 9, -1, 3, 2, 30]),true);
  assert.deepEqual(candidate([-3, 9, -1, 3, 2, 31]),true);
  assert.deepEqual(candidate([-3, 9, -1, 4, 2, 30]),false);
  assert.deepEqual(candidate([-3, 9, -1, 4, 2, 31]),false);
}

test();