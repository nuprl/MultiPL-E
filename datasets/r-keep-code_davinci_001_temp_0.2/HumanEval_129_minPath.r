# Given a grid with N rows and N columns (N >= 2) and a positive integer k, 
# each cell of the grid contains a value. Every integer in the range [1, N * N]
# inclusive appears exactly once on the cells of the grid.
# You have to find the minimum path of length k in the grid. You can start
# from any cell, and in each step you can move to any of the neighbor cells,
# in other words, you can go to cells which share an edge with you current
# cell.
# Please note that a path of length k means visiting exactly k cells (not
# necessarily distinct).
# You CANNOT go off the grid.
# A path A (of length k) is considered less than a path B (of length k) if
# after making the ordered lists of the values on the cells that A and B go
# through (let's call them lst_A and lst_B), lst_A is lexicographically less
# than lst_B, in other words, there exist an integer index i (1 <= i <= k)
# such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have
# lst_A[j] = lst_B[j].
# It is guaranteed that the answer is unique.
# Return an ordered list of the values on the cells that the minimum path go through.
# Examples:
# Input: grid = [ [1,2,3], [4,5,6], [7,8,9]], k = 3
# Output: [1, 2, 1]
# Input: grid = [ [5,9,3], [4,1,6], [7,8,2]], k = 1
# Output: [1]
minPath <- function(grid, k) {
    n <- length(grid)
    dp <- matrix(0, nrow=n, ncol=n)
    dp[1, 1] <- grid[1, 1]
    for (i in 1:n) {
        for (j in 1:n) {
            if (i == 1 && j == 1) {
                continue
            }
            if (i == 1) {
                dp[i, j] <- dp[i, j-1] + grid[i, j]
            } else if (j == 1) {
                dp[i, j] <- dp[i-1, j] + grid[i, j]
            } else {
                dp[i, j] <- min(dp[i-1, j], dp[i, j-1]) + grid[i, j]
            }
        }
    }
    dp
}

minPath(grid = matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, byrow=T), k=3)
minPath(grid = matrix(c(5,9,3,4,1,6,7,8,2), nrow=3, byrow=T), k=1)


test_humaneval <- function() {
candidate <- minPath
    if(!identical(candidate(c(c(1, 2, 3), c(4, 5, 6), c(7, 8, 9)), 3), c(1, 2, 1))){quit('no', 1)}
    if(!identical(candidate(c(c(5, 9, 3), c(4, 1, 6), c(7, 8, 2)), 1), c(1))){quit('no', 1)}
    if(!identical(candidate(c(c(1, 2, 3, 4), c(5, 6, 7, 8), c(9, 10, 11, 12), c(13, 14, 15, 16)), 4), c(1, 2, 1, 2))){quit('no', 1)}
    if(!identical(candidate(c(c(6, 4, 13, 10), c(5, 7, 12, 1), c(3, 16, 11, 15), c(8, 14, 9, 2)), 7), c(1, 10, 1, 10, 1, 10, 1))){quit('no', 1)}
    if(!identical(candidate(c(c(8, 14, 9, 2), c(6, 4, 13, 15), c(5, 7, 1, 12), c(3, 10, 11, 16)), 5), c(1, 7, 1, 7, 1))){quit('no', 1)}
    if(!identical(candidate(c(c(11, 8, 7, 2), c(5, 16, 14, 4), c(9, 3, 15, 6), c(12, 13, 10, 1)), 9), c(1, 6, 1, 6, 1, 6, 1, 6, 1))){quit('no', 1)}
    if(!identical(candidate(c(c(12, 13, 10, 1), c(9, 3, 15, 6), c(5, 16, 14, 4), c(11, 8, 7, 2)), 12), c(1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6))){quit('no', 1)}
    if(!identical(candidate(c(c(2, 7, 4), c(3, 1, 5), c(6, 8, 9)), 8), c(1, 3, 1, 3, 1, 3, 1, 3))){quit('no', 1)}
    if(!identical(candidate(c(c(6, 1, 5), c(3, 8, 9), c(2, 7, 4)), 8), c(1, 5, 1, 5, 1, 5, 1, 5))){quit('no', 1)}
    if(!identical(candidate(c(c(1, 2), c(3, 4)), 10), c(1, 2, 1, 2, 1, 2, 1, 2, 1, 2))){quit('no', 1)}
    if(!identical(candidate(c(c(1, 3), c(3, 2)), 10), c(1, 3, 1, 3, 1, 3, 1, 3, 1, 3))){quit('no', 1)}
}
test_humaneval()