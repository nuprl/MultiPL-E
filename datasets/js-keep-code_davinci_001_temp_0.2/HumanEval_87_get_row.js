//You are given a 2 dimensional data, as a nested lists,
// which is similar to matrix, however, unlike matrices,
// each row may contain a different number of columns.
// Given lst, and integer x, find integers x in the list,
// and return list of tuples, [(x1, y1), (x2, y2) ...] such that
// each tuple is a coordinate - (row, columns), starting with 0.
// Sort coordinates initially by rows in ascending order.
// Also, sort coordinates of the row by columns in descending order.
// Examples:
// get_row([
// [1,2,3,4,5,6],
// [1,2,3,4,1,6],
// [1,2,3,4,5,1]
// ], 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
// get_row([], 1) == []
// get_row([[], [1], [1, 2, 3]], 3) == [(2, 2)]
function get_row(lst, x){
  let result = [];
  let row = 0;
  let col = 0;
  for (let i = 0; i < lst.length; i++){
    for (let j = 0; j < lst[i].length; j++){
      if (lst[i][j] == x){
        result.push([row, col]);
      }
      col++;
    }
    row++;
    col = 0;
  }
  result.sort((a, b) => a[0] - b[0]);
  for (let i = 0; i < result.length; i++){
    result[i][1] = lst[result[i][0]].length - result[i][1] - 1;
  }
  result.sort((a, b) => a[1] - b[1]);
  return result;
}


const assert = require('node:assert');


function test() {
  let candidate = get_row;
  assert.deepEqual(candidate([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 1, 6], [1, 2, 3, 4, 5, 1]], 1),[[0, 0], [1, 4], [1, 0], [2, 5], [2, 0]]);
  assert.deepEqual(candidate([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6]], 2),[[0, 1], [1, 1], [2, 1], [3, 1], [4, 1], [5, 1]]);
  assert.deepEqual(candidate([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 1, 3, 4, 5, 6], [1, 2, 1, 4, 5, 6], [1, 2, 3, 1, 5, 6], [1, 2, 3, 4, 1, 6], [1, 2, 3, 4, 5, 1]], 1),[[0, 0], [1, 0], [2, 1], [2, 0], [3, 2], [3, 0], [4, 3], [4, 0], [5, 4], [5, 0], [6, 5], [6, 0]]);
  assert.deepEqual(candidate([], 1),[]);
  assert.deepEqual(candidate([[1]], 2),[]);
  assert.deepEqual(candidate([[], [1], [1, 2, 3]], 3),[[2, 2]]);
}

test();