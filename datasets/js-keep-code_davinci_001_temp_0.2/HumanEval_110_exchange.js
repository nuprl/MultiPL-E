//In this problem, you will implement a function that takes two lists of numbers,
// and determines whether it is possible to perform an exchange of elements
// between them to make lst1 a list of only even numbers.
// There is no limit on the number of exchanged elements between lst1 and lst2.
// If it is possible to exchange elements between the lst1 and lst2 to make
// all the elements of lst1 to be even, return "YES".
// Otherwise, return "NO".
// For example:
// exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
// exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
// It is assumed that the input lists will be non-empty.
function exchange(lst1, lst2){
  var evens = [];
  var odds = [];
  for(var i = 0; i < lst1.length; i++){
    if(lst1[i] % 2 === 0){
      evens.push(lst1[i]);
    } else {
      odds.push(lst1[i]);
    }
  }
  for(var j = 0; j < lst2.length; j++){
    if(lst2[j] % 2 === 0){
      evens.push(lst2[j]);
    } else {
      odds.push(lst2[j]);
    }
  }
  if(evens.length === lst1.length){
    return "YES";
  } else {
    return "NO";
  }
}


const assert = require('node:assert');


function test() {
  let candidate = exchange;
  assert.deepEqual(candidate([1, 2, 3, 4], [1, 2, 3, 4]),"YES");
  assert.deepEqual(candidate([1, 2, 3, 4], [1, 5, 3, 4]),"NO");
  assert.deepEqual(candidate([1, 2, 3, 4], [2, 1, 4, 3]),"YES");
  assert.deepEqual(candidate([5, 7, 3], [2, 6, 4]),"YES");
  assert.deepEqual(candidate([5, 7, 3], [2, 6, 3]),"NO");
  assert.deepEqual(candidate([3, 2, 6, 1, 8, 9], [3, 5, 5, 1, 1, 1]),"NO");
  assert.deepEqual(candidate([100, 200], [200, 200]),"YES");
}

test();