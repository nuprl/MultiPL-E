//This function takes a list l and returns a list l' such that
// l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
// to the values of the corresponding indicies of l, but sorted.
// >>> sort_third([1, 2, 3])
// [1, 2, 3]
// >>> sort_third([5, 6, 3, 4, 8, 9, 2])
// [2, 6, 3, 4, 8, 9, 5]
function sort_third(l){
    var new_list = [];
    for(var i = 0; i < l.length; i++){
        if(i % 3 == 0){
            new_list.push(l[i]);
        }
    }
    return new_list;
}


const assert = require('node:assert');


function test() {
  let candidate = sort_third;
  assert.deepEqual(candidate([5, 6, 3, 4, 8, 9, 2]),[2, 6, 3, 4, 8, 9, 5]);
  assert.deepEqual(candidate([5, 8, 3, 4, 6, 9, 2]),[2, 8, 3, 4, 6, 9, 5]);
  assert.deepEqual(candidate([5, 6, 9, 4, 8, 3, 2]),[2, 6, 9, 4, 8, 3, 5]);
  assert.deepEqual(candidate([5, 6, 3, 4, 8, 9, 2, 1]),[2, 6, 3, 4, 8, 9, 5, 1]);
}

test();