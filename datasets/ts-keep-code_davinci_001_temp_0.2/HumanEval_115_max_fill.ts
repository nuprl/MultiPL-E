//You are given a rectangular grid of wells. Each row represents a single well,
// and each 1 in a row represents a single unit of water.
// Each well has a corresponding bucket that can be used to extract water from it, 
// and all buckets have the same capacity.
// Your task is to use the buckets to empty the wells.
// Output the number of times you need to lower the buckets.
// Example 1:
// Input: 
// grid : [[0,0,1,0], [0,1,0,0], [1,1,1,1]]
// bucket_capacity : 1
// Output: 6
// Example 2:
// Input: 
// grid : [[0,0,1,1], [0,0,0,0], [1,1,1,1], [0,1,1,1]]
// bucket_capacity : 2
// Output: 5
// Example 3:
// Input: 
// grid : [[0,0,0], [0,0,0]]
// bucket_capacity : 5
// Output: 0
// Constraints:
// * all wells have the same length
// * 1 <= grid.length <= 10^2
// * 1 <= grid[:,1].length <= 10^2
// * grid[i][j] -> 0 | 1
// * 1 <= capacity <= 10
function max_fill(grid: number[][], capacity: number): number {
  const n = grid.length;
  const m = grid[0].length;
  const dp = Array(n).fill(0).map(() => Array(m).fill(0));
  const dirs = [[0, 1], [1, 0], [0, -1], [-1, 0]];
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < m; j++) {
      if (grid[i][j] === 0) {
        continue;
      }
      let count = 0;
      for (let k = 0; k < dirs.length; k++) {
        let x = i + dirs[k][0];
        let y = j + dirs[k][1];
        while (x >= 0 && x < n && y >= 0 && y < m && grid[x][y] === 0) {
          x += dirs[k][0];
          y += dirs[k][1];
          count++;
        }
      }
      dp[i][j] = Math.ceil(count / capacity);
    }
  }
  return dp.reduce((a, b) => a + b.reduce((a, b) => a + b, 0), 0);
}


declare var require: any;
const assert = require('node:assert');


function test() {
  let candidate = max_fill;
  assert.deepEqual(candidate([[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], 1),6);
  assert.deepEqual(candidate([[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], 2),5);
  assert.deepEqual(candidate([[0, 0, 0], [0, 0, 0]], 5),0);
  assert.deepEqual(candidate([[1, 1, 1, 1], [1, 1, 1, 1]], 2),4);
  assert.deepEqual(candidate([[1, 1, 1, 1], [1, 1, 1, 1]], 9),2);
}

test();