# You are given a rectangular grid of wells. Each row represents a single well,
# and each 1 in a row represents a single unit of water.
# Each well has a corresponding bucket that can be used to extract water from it, 
# and all buckets have the same capacity.
# Your task is to use the buckets to empty the wells.
# Output the number of times you need to lower the buckets.
# Example 1:
# >>> max_fill([[0,0,1,0], [0,1,0,0], [1,1,1,1]], 1)
# 6
# Example 2:
# >>> max_fill([[0,0,1,1], [0,0,0,0], [1,1,1,1], [0,1,1,1]], 2)
# 5
# Example 3:
# >>> max_fill([[0,0,0], [0,0,0]], 5)
# 0
# Constraints:
# * all wells have the same length
# * 1 <= grid.length <= 10^2
# * 1 <= grid[:,1].length <= 10^2
# * grid[i][j] -> 0 | 1
# * 1 <= capacity <= 10
max_fill <- function(grid, capacity) {
    # your code here
}


test_humaneval <- function() {
candidate <- max_fill
    if(!identical(candidate(list(list(0, 0, 1, 0), list(0, 1, 0, 0), list(1, 1, 1, 1)), 1), 6)){quit('no', 1)}
    if(!identical(candidate(list(list(0, 0, 1, 1), list(0, 0, 0, 0), list(1, 1, 1, 1), list(0, 1, 1, 1)), 2), 5)){quit('no', 1)}
    if(!identical(candidate(list(list(0, 0, 0), list(0, 0, 0)), 5), 0)){quit('no', 1)}
    if(!identical(candidate(list(list(1, 1, 1, 1), list(1, 1, 1, 1)), 2), 4)){quit('no', 1)}
    if(!identical(candidate(list(list(1, 1, 1, 1), list(1, 1, 1, 1)), 9), 2)){quit('no', 1)}
}
test_humaneval()