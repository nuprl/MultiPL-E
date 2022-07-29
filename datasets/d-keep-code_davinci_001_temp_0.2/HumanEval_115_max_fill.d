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
int max_fill(int[][] grid, int capacity) 
{
    int n = grid.length;
    int m = grid[0].length;
    int[][] dp = new int[n][m];
    int[][] dp_prev = new int[n][m];
    int[][] dp_next = new int[n][m];
    int[][] dp_next_prev = new int[n][m];
    int[][] dp_next_next = new int[n][m];
    int[][] dp_next_next_prev = new int[n][m];
    int[][] dp_next_next_next = new int[n][m];
    int[][] dp_next_next_next_prev = new int[n][m];
    int[][] dp_next_next_next_next = new int[n][m];
    int[][] dp_next_next_next_next_prev = new int[n][m];
    int[][] dp_next_next_next_next_next = new int[n][m];
    int[][] dp_next_next_next_next_next_prev = new int[n][m];
    int[][] dp_next_next_next_next_next_next = new int[n][m];
    int[][] dp_next_next_next_next_next_next_prev = new int[n][m];
    int[][] dp_next_next_next_next_next_next_next = new int[n][m];
    int[][] dp_next_next_next_next_next_next_next_prev = new int[n][m];
    int[][] dp_next_next_next_next_next_next_next_next = new int[n][m];
    int[][] dp_next_next_next_next_next_next_next_next_prev = new int[n][m];
    int[][] dp_next_next_next_next_next_next_next_next_next = new

unittest
{
    alias candidate = max_fill;

    assert(candidate([[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], 1) == 6);
    assert(candidate([[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], 2) == 5);
    assert(candidate([[0, 0, 0], [0, 0, 0]], 5) == 0);
    assert(candidate([[1, 1, 1, 1], [1, 1, 1, 1]], 2) == 4);
    assert(candidate([[1, 1, 1, 1], [1, 1, 1, 1]], 9) == 2);
}
void main(){}