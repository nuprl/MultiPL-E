# You are given a rectangular grid of wells. Each row represents a single well,
# and each 1 in a row represents a single unit of water.
# Each well has a corresponding bucket that can be used to extract water from it, 
# and all buckets have the same capacity.
# Your task is to use the buckets to empty the wells.
# Output the number of times you need to lower the buckets.
# Example 1:
# Input: 
# grid : [[0,0,1,0], [0,1,0,0], [1,1,1,1]]
# bucket_capacity : 1
# Output: 6
# Example 2:
# Input: 
# grid : [[0,0,1,1], [0,0,0,0], [1,1,1,1], [0,1,1,1]]
# bucket_capacity : 2
# Output: 5
# Example 3:
# Input: 
# grid : [[0,0,0], [0,0,0]]
# bucket_capacity : 5
# Output: 0
# Constraints:
# * all wells have the same length
# * 1 <= grid.length <= 10^2
# * 1 <= grid[:,1].length <= 10^2
# * grid[i][j] -> 0 | 1
# * 1 <= capacity <= 10
max_fill <- function(grid, capacity) {
    nrow <- ncol <- length(grid)
    wells <- matrix(0, nrow, ncol)
    for (i in 1:nrow) {
        for (j in 1:ncol) {
            if (grid[i, j] == 1) {
                wells[i, j] <- 1
            }
        }
    }
    buckets <- matrix(0, nrow, ncol)
    for (i in 1:nrow) {
        for (j in 1:ncol) {
            if (wells[i, j] == 1) {
                buckets[i, j] <- capacity
            }
        }
    }
    fill <- 0
    while (TRUE) {
        wells_to_fill <- matrix(0, nrow, ncol)
        for (i in 1:nrow) {
            for (j in 1:ncol) {
                if (wells[i, j] == 1) {
                    wells_to_fill[i, j] <- 1
                }
            }
        }
        wells_filled <- matrix(0, nrow, ncol)
        for (i in 1:nrow) {
            for (j in 1:ncol) {
                if (wells_to_fill[i, j] == 1) {
                    wells_filled[i, j] <- 1
                    if (i > 1 && wells_to_fill[i - 1, j] == 1) {
                        buckets[i - 1, j] <- buckets[i - 1, j] - capacity
                        wells_filled[i - 1, j] <- 1
                    }
                    if (i < nrow && wells_to_fill[i + 1, j] == 1) {
                        buckets[i + 1, j] <- buckets[i + 1, j] - capacity
                        wells_filled[i + 1, j] <- 1
                    }
                    if (j > 1 && wells_to_fill[i, j - 1] == 1) {
                        buckets[i, j - 1] <- buckets[i, j - 1] - capacity
                        wells_filled[i, j -

test_humaneval <- function() {
candidate <- max_fill
    if(!identical(candidate(list(list(0, 0, 1, 0), list(0, 1, 0, 0), list(1, 1, 1, 1)), 1), 6)){quit('no', 1)}
    if(!identical(candidate(list(list(0, 0, 1, 1), list(0, 0, 0, 0), list(1, 1, 1, 1), list(0, 1, 1, 1)), 2), 5)){quit('no', 1)}
    if(!identical(candidate(list(list(0, 0, 0), list(0, 0, 0)), 5), 0)){quit('no', 1)}
    if(!identical(candidate(list(list(1, 1, 1, 1), list(1, 1, 1, 1)), 2), 4)){quit('no', 1)}
    if(!identical(candidate(list(list(1, 1, 1, 1), list(1, 1, 1, 1)), 9), 2)){quit('no', 1)}
}
test_humaneval()