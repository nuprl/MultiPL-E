import std.typecons;
import std.math;
/*

    Given a grid with N rows and N columns (N >= 2) and a positive integer k, 
    each cell of the grid contains a value. Every integer in the range [1, N * N]
    inclusive appears exactly once on the cells of the grid.

    You have to find the minimum path of length k in the grid. You can start
    from any cell, and in each step you can move to any of the neighbor cells,
    in other words, you can go to cells which share an edge with you current
    cell.
    Please note that a path of length k means visiting exactly k cells (not
    necessarily distinct).
    You CANNOT go off the grid.
    A path A (of length k) is considered less than a path B (of length k) if
    after making the ordered lists of the values on the cells that A and B go
    through (let's call them lst_A and lst_B), lst_A is lexicographically less
    than lst_B, in other words, there exist an integer index i (1 <= i <= k)
    such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have
    lst_A[j] = lst_B[j].
    It is guaranteed that the answer is unique.
    Return an ordered list of the values on the cells that the minimum path go through.

    Examples:

        Input: grid = [ [1,2,3], [4,5,6], [7,8,9]], k = 3
        Output: [1, 2, 1]

        Input: grid = [ [5,9,3], [4,1,6], [7,8,2]], k = 1
        Output: [1]
    
*/
long[] minPath(long[][] grid, long k) 
{
    long[][] dp = new long[grid.length][grid[0].length];
    dp[0][0] = grid[0][0];
    for (int i = 1; i < grid.length; i++)
        dp[i][0] = dp[i - 1][0] + grid[i][0];
    for (int j = 1; j < grid[0].length; j++)
        dp[0][j] = dp[0][j - 1] + grid[0][j];
    for (int i = 1; i < grid.length; i++)
        for (int j = 1; j < grid[0].length; j++)
            dp[i][j] = Math.min(dp[i - 1][j], dp[i][j - 1]) + grid[i][j];
    long[] ans = new long[k];
    ans[0] = dp[grid.length - 1][grid[0].length - 1];
    for (int i = 1; i < k; i++)
    {
        long min = Long.MAX_VALUE;
        for (int j = 0; j < grid.length; j++)
            for (int k = 0; k < grid[0].length; k++)
                if (dp[j][k] < min)
                {
                    min = dp[j][k];
                    ans[i] = min;
                }
        for (int j = 0; j < grid.length; j++)
            for (int k = 0; k < grid[0].length; k++)
                if (dp[j][k] == min)
                    dp[j][k] += grid[j][k];
    }
    return ans;
}

unittest
{
    alias candidate = minPath;

    assert(candidate([[1L, 2L, 3L], [4L, 5L, 6L], [7L, 8L, 9L]], 3L) == [1L, 2L, 1L]);
    assert(candidate([[5L, 9L, 3L], [4L, 1L, 6L], [7L, 8L, 2L]], 1L) == [1L]);
    assert(candidate([[1L, 2L, 3L, 4L], [5L, 6L, 7L, 8L], [9L, 10L, 11L, 12L], [13L, 14L, 15L, 16L]], 4L) == [1L, 2L, 1L, 2L]);
    assert(candidate([[6L, 4L, 13L, 10L], [5L, 7L, 12L, 1L], [3L, 16L, 11L, 15L], [8L, 14L, 9L, 2L]], 7L) == [1L, 10L, 1L, 10L, 1L, 10L, 1L]);
    assert(candidate([[8L, 14L, 9L, 2L], [6L, 4L, 13L, 15L], [5L, 7L, 1L, 12L], [3L, 10L, 11L, 16L]], 5L) == [1L, 7L, 1L, 7L, 1L]);
    assert(candidate([[11L, 8L, 7L, 2L], [5L, 16L, 14L, 4L], [9L, 3L, 15L, 6L], [12L, 13L, 10L, 1L]], 9L) == [1L, 6L, 1L, 6L, 1L, 6L, 1L, 6L, 1L]);
    assert(candidate([[12L, 13L, 10L, 1L], [9L, 3L, 15L, 6L], [5L, 16L, 14L, 4L], [11L, 8L, 7L, 2L]], 12L) == [1L, 6L, 1L, 6L, 1L, 6L, 1L, 6L, 1L, 6L, 1L, 6L]);
    assert(candidate([[2L, 7L, 4L], [3L, 1L, 5L], [6L, 8L, 9L]], 8L) == [1L, 3L, 1L, 3L, 1L, 3L, 1L, 3L]);
    assert(candidate([[6L, 1L, 5L], [3L, 8L, 9L], [2L, 7L, 4L]], 8L) == [1L, 5L, 1L, 5L, 1L, 5L, 1L, 5L]);
    assert(candidate([[1L, 2L], [3L, 4L]], 10L) == [1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L]);
    assert(candidate([[1L, 3L], [3L, 2L]], 10L) == [1L, 3L, 1L, 3L, 1L, 3L, 1L, 3L, 1L, 3L]);
}
void main(){}