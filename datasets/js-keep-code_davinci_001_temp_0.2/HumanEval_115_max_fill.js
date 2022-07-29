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
function max_fill(grid, capacity){
    let row = grid.length;
    let col = grid[0].length;
    let max_fill = 0;
    for(let i = 0; i < row; i++){
        for(let j = 0; j < col; j++){
            if(grid[i][j] == 1){
                let fill = 0;
                let count = 0;
                while(fill < capacity && count < col){
                    if(grid[i][count] == 0){
                        fill++;
                    }
                    count++;
                }
                max_fill += count - j - 1;
            }
        }
    }
    return max_fill;
}


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