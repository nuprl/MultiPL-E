//Given a list of numbers, return whether or not they are sorted
// in ascending order. If list has more than 1 duplicate of the same
// number, return False. Assume no negative numbers and only integers.
// Examples
// is_sorted([5]) ➞ True
// is_sorted([1, 2, 3, 4, 5]) ➞ True
// is_sorted([1, 3, 2, 4, 5]) ➞ False
// is_sorted([1, 2, 3, 4, 5, 6]) ➞ True
// is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ True
// is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ False
// is_sorted([1, 2, 2, 3, 3, 4]) ➞ True
// is_sorted([1, 2, 2, 2, 3, 4]) ➞ False
function is_sorted(lst){
    var sorted = true;
    for(var i = 0; i < lst.length - 1; i++){
        if(lst[i] > lst[i+1]){
            sorted = false;
        }
    }
    return sorted;
}


const assert = require('node:assert');


function test() {
  let candidate = is_sorted;
  assert.deepEqual(candidate([5]),true);
  assert.deepEqual(candidate([1, 2, 3, 4, 5]),true);
  assert.deepEqual(candidate([1, 3, 2, 4, 5]),false);
  assert.deepEqual(candidate([1, 2, 3, 4, 5, 6]),true);
  assert.deepEqual(candidate([1, 2, 3, 4, 5, 6, 7]),true);
  assert.deepEqual(candidate([1, 3, 2, 4, 5, 6, 7]),false);
  assert.deepEqual(candidate([]),true);
  assert.deepEqual(candidate([1]),true);
  assert.deepEqual(candidate([3, 2, 1]),false);
  assert.deepEqual(candidate([1, 2, 2, 2, 3, 4]),false);
  assert.deepEqual(candidate([1, 2, 3, 3, 3, 4]),false);
  assert.deepEqual(candidate([1, 2, 2, 3, 3, 4]),true);
  assert.deepEqual(candidate([1, 2, 3, 4]),true);
}

test();