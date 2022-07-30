//Given a positive integer n, you have to make a pile of n levels of stones.
// The first level has n stones.
// The number of stones in the next level is:
// - the next odd number if n is odd.
// - the next even number if n is even.
// Return the number of stones in each level in a list, where element at index
// i represents the number of stones in the level (i+1).
// Examples:
// >>> make_a_pile(3)
// [3, 5, 7]
function make_a_pile(n){
    var pile = [];
    var i = 0;
    while(i < n){
        if(n % 2 == 0){
            pile.push(n);
            n++;
        }
        else{
            pile.push(n);
            n += 2;
        }
        i++;
    }
    return pile;
}


const assert = require('node:assert');


function test() {
  let candidate = make_a_pile;
  assert.deepEqual(candidate(3),[3, 5, 7]);
  assert.deepEqual(candidate(4),[4, 6, 8, 10]);
  assert.deepEqual(candidate(5),[5, 7, 9, 11, 13]);
  assert.deepEqual(candidate(6),[6, 8, 10, 12, 14, 16]);
  assert.deepEqual(candidate(8),[8, 10, 12, 14, 16, 18, 20, 22]);
}

test();