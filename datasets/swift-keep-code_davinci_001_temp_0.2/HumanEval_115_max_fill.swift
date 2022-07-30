
// You are given a rectangular grid of wells. Each row represents a single well,
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
func max_fill(grid: [[Int]], capacity: Int) -> Int {
    var max_fill = 0
    var max_fill_grid = grid
    var max_fill_capacity = capacity
    for i in 0..<grid.count {
        for j in 0..<grid[i].count {
            if grid[i][j] == 1 {
                max_fill += 1
                max_fill_grid[i][j] = 0
                max_fill_capacity -= 1
            }
        }
    }
    return max_fill

}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(max_fill(grid: [[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1) == 6)
assert(max_fill(grid: [[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2) == 5)
assert(max_fill(grid: [[0, 0, 0], [0, 0, 0]], capacity: 5) == 0)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 2) == 4)
assert(max_fill(grid: [[1, 1, 1, 1], [1, 1, 1, 1]], capacity: 9) == 2)