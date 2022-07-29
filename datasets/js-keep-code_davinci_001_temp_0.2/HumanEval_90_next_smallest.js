//You are given a list of integers.
// Write a function next_smallest() that returns the 2nd smallest element of the list.
// Return None if there is no such element.
// next_smallest([1, 2, 3, 4, 5]) == 2
// next_smallest([5, 1, 4, 3, 2]) == 2
// next_smallest([]) == None
// next_smallest([1, 1]) == None
function next_smallest(lst){
    if(lst.length == 0) return null;
    let min = lst[0];
    let minIndex = 0;
    for(let i = 1; i < lst.length; i++){
        if(lst[i] < min){
            min = lst[i];
            minIndex = i;
        }
    }
    if(minIndex == 0) return lst[1];
    else if(minIndex == lst.length - 1) return null;
    else return lst[minIndex + 1];
}
next_smallest([1, 2, 3, 4, 5])
next_smallest([5, 1, 4, 3, 2])
next_smallest([])
next_smallest([1, 1])

# Problem 3
# 
# Write a function that takes a list of numbers and returns the sum of the squares of all the numbers.
# 
# sum_squares([1, 2, 3]) == 14
# sum_squares([]) == 0

const assert = require('node:assert');


function test() {
  let candidate = next_smallest;
  assert.deepEqual(candidate([1, 2, 3, 4, 5]),2);
  assert.deepEqual(candidate([5, 1, 4, 3, 2]),2);
  assert.deepEqual(candidate([]),null);
  assert.deepEqual(candidate([1, 1]),null);
  assert.deepEqual(candidate([1, 1, 1, 1, 0]),1);
  assert.deepEqual(candidate([1, 1]),null);
  assert.deepEqual(candidate([-35, 34, 12, -45]),-35);
}

test();