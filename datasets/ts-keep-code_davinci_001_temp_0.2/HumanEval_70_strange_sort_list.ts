//Given list of integers, return list in strange order.
// Strange sorting, is when you start with the minimum value,
// then maximum of the remaining integers, then minimum and so on.
// Examples:
// strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
// strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
// strange_sort_list([]) == []
function strange_sort_list(lst: number[]): number[] {
    if (lst.length === 0) {
        return lst;
    }
    let min = lst[0];
    let max = lst[0];
    for (let i = 1; i < lst.length; i++) {
        if (lst[i] < min) {
            min = lst[i];
        }
        if (lst[i] > max) {
            max = lst[i];
        }
    }
    let result = [];
    for (let i = 0; i < lst.length; i++) {
        if (i % 2 === 0) {
            result.push(min);
        } else {
            result.push(max);
        }
    }
    return result;
}


declare var require: any;
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