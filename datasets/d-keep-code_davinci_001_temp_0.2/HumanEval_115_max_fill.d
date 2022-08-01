import std.typecons;
import std.math;
/*

    You are given a rectangular grid of wells. Each row represents a single well,
    and each 1 in a row represents a single unit of water.
    Each well has a corresponding bucket that can be used to extract water from it, 
    and all buckets have the same capacity.
    Your task is to use the buckets to empty the wells.
    Output the number of times you need to lower the buckets.

    Example 1:
        Input: 
            grid : [[0,0,1,0], [0,1,0,0], [1,1,1,1]]
            bucket_capacity : 1
        Output: 6

    Example 2:
        Input: 
            grid : [[0,0,1,1], [0,0,0,0], [1,1,1,1], [0,1,1,1]]
            bucket_capacity : 2
        Output: 5
    
    Example 3:
        Input: 
            grid : [[0,0,0], [0,0,0]]
            bucket_capacity : 5
        Output: 0

    Constraints:
        * all wells have the same length
        * 1 <= grid.length <= 10^2
        * 1 <= grid[:,1].length <= 10^2
        * grid[i][j] -> 0 | 1
        * 1 <= capacity <= 10
    
*/
long max_fill(long[][] grid, long capacity) 
{
    long[][] dp = new long[grid.length][grid[0].length];
    for (int i = 0; i < grid.length; i++) {
        for (int j = 0; j < grid[0].length; j++) {
            if (grid[i][j] == 0) {
                dp[i][j] = 0;
            } else {
                dp[i][j] = 1;
            }
        }
    }
    for (int i = grid.length - 1; i >= 0; i--) {
        for (int j = grid[0].length - 1; j >= 0; j--) {
            if (grid[i][j] == 0) {
                continue;
            }
            if (i + 1 < grid.length && grid[i + 1][j] == 1) {
                dp[i][j] = Math.max(dp[i][j], dp[i + 1][j] + 1);
            }
            if (j + 1 < grid[0].length && grid[i][j + 1] == 1) {
                dp[i][j] = Math.max(dp[i][j], dp[i][j + 1] + 1);
            }
        }
    }
    long ans = 0;
    for (int i = 0; i < grid.length; i++) {
        for (int j = 0; j < grid[0].length; j++) {
            ans = Math.max(ans, dp[i][j]);
        }
    }
    return ans;
}

unittest
{
    alias candidate = max_fill;

    assert(candidate([[0L, 0L, 1L, 0L], [0L, 1L, 0L, 0L], [1L, 1L, 1L, 1L]], 1L) == 6L);
    assert(candidate([[0L, 0L, 1L, 1L], [0L, 0L, 0L, 0L], [1L, 1L, 1L, 1L], [0L, 1L, 1L, 1L]], 2L) == 5L);
    assert(candidate([[0L, 0L, 0L], [0L, 0L, 0L]], 5L) == 0L);
    assert(candidate([[1L, 1L, 1L, 1L], [1L, 1L, 1L, 1L]], 2L) == 4L);
    assert(candidate([[1L, 1L, 1L, 1L], [1L, 1L, 1L, 1L]], 9L) == 2L);
}
void main(){}