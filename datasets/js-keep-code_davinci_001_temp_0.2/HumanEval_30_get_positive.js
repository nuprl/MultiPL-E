//Return only positive numbers in the list.
// >>> get_positive([-1, 2, -4, 5, 6])
// [2, 5, 6]
// >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
// [5, 3, 2, 3, 9, 123, 1]
function get_positive(l){
    var new_list = [];
    for (var i = 0; i < l.length; i++){
        if (l[i] > 0){
            new_list.push(l[i]);
        }
    }
    return new_list;
}


const assert = require('node:assert');


function test() {
  let candidate = get_positive;
  assert.deepEqual(candidate([-1, -2, 4, 5, 6]),[4, 5, 6]);
  assert.deepEqual(candidate([5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10]),[5, 3, 2, 3, 3, 9, 123, 1]);
  assert.deepEqual(candidate([-1, -2]),[]);
  assert.deepEqual(candidate([]),[]);
}

test();