//triples_sum_to_zero takes a list of integers as an input.
// it returns True if there are three distinct elements in the list that
// sum to zero, and False otherwise.
// >>> triples_sum_to_zero([1, 3, 5, 0])
// False
// >>> triples_sum_to_zero([1, 3, -2, 1])
// True
// >>> triples_sum_to_zero([1, 2, 3, 7])
// False
// >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
// True
// >>> triples_sum_to_zero([1])
// False
function triples_sum_to_zero(l){
    for(let i = 0; i < l.length; i++){
        for(let j = i + 1; j < l.length; j++){
            for(let k = j + 1; k < l.length; k++){
                if(l[i] + l[j] + l[k] === 0){
                    return true;
                }
            }
        }
    }
    return false;
}


const assert = require('node:assert');


function test() {
  let candidate = triples_sum_to_zero;
  assert.deepEqual(candidate([1, 3, 5, 0]),false);
  assert.deepEqual(candidate([1, 3, 5, -1]),false);
  assert.deepEqual(candidate([1, 3, -2, 1]),true);
  assert.deepEqual(candidate([1, 2, 3, 7]),false);
  assert.deepEqual(candidate([1, 2, 5, 7]),false);
  assert.deepEqual(candidate([2, 4, -5, 3, 9, 7]),true);
  assert.deepEqual(candidate([1]),false);
  assert.deepEqual(candidate([1, 3, 5, -100]),false);
  assert.deepEqual(candidate([100, 3, 5, -100]),false);
}

test();