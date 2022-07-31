//This function takes a list l and returns a list l' such that
// l' is identical to l in the odd indicies, while its values at the even indicies are equal
// to the values of the even indicies of l, but sorted.
// >>> sort_even([1, 2, 3])
// [1, 2, 3]
// >>> sort_even([5, 6, 3, 4])
// [3, 6, 5, 4]
function sort_even(l){
    var even = [];
    var odd = [];
    for(var i = 0; i < l.length; i++){
        if(i % 2 == 0){
            even.push(l[i]);
        }
        else{
            odd.push(l[i]);
        }
    }
    odd.sort();
    for(var i = 0; i < l.length; i++){
        if(i % 2 == 0){
            l[i] = even[i/2];
        }
        else{
            l[i] = odd[i/2];
        }
    }
    return l;
}


const assert = require('node:assert');


function test() {
  let candidate = sort_even;
  assert.deepEqual(candidate([1, 2, 3]),[1, 2, 3]);
  assert.deepEqual(candidate([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]),[-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123]);
  assert.deepEqual(candidate([5, 8, -12, 4, 23, 2, 3, 11, 12, -10]),[-12, 8, 3, 4, 5, 2, 12, 11, 23, -10]);
}

test();