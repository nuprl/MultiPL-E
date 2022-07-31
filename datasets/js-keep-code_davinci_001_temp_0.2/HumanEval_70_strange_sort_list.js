//Given list of integers, return list in strange order.
// Strange sorting, is when you start with the minimum value,
// then maximum of the remaining integers, then minimum and so on.
// Examples:
// strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
// strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
// strange_sort_list([]) == []
function strange_sort_list(lst){
  var newList = [];
  var min = Math.min.apply(null, lst);
  var max = Math.max.apply(null, lst);
  var minIndex = lst.indexOf(min);
  var maxIndex = lst.indexOf(max);
  newList.push(min);
  newList.push(max);
  lst.splice(minIndex, 1);
  lst.splice(maxIndex, 1);
  while (lst.length > 0) {
    var min = Math.min.apply(null, lst);
    var minIndex = lst.indexOf(min);
    newList.push(min);
    lst.splice(minIndex, 1);
  }
  return newList;
}


const assert = require('node:assert');


function test() {
  let candidate = strange_sort_list;
  assert.deepEqual(candidate([1, 2, 3, 4]),[1, 4, 2, 3]);
  assert.deepEqual(candidate([5, 6, 7, 8, 9]),[5, 9, 6, 8, 7]);
  assert.deepEqual(candidate([1, 2, 3, 4, 5]),[1, 5, 2, 4, 3]);
  assert.deepEqual(candidate([5, 6, 7, 8, 9, 1]),[1, 9, 5, 8, 6, 7]);
  assert.deepEqual(candidate([5, 5, 5, 5]),[5, 5, 5, 5]);
  assert.deepEqual(candidate([]),[]);
  assert.deepEqual(candidate([1, 2, 3, 4, 5, 6, 7, 8]),[1, 8, 2, 7, 3, 6, 4, 5]);
  assert.deepEqual(candidate([0, 2, 2, 2, 5, 5, -5, -5]),[-5, 5, -5, 5, 0, 2, 2, 2]);
  assert.deepEqual(candidate([111111]),[111111]);
}

test();