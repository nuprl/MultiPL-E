using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
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
    public static int MaxFill(List<List<int>> grid, int capacity) {
        int n = grid.Count;
        int m = grid[0].Count;
        int[,] dp = new int[n, m];
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                if (grid[i][j] == 0) {
                    dp[i, j] = 0;
                } else {
                    dp[i, j] = capacity;
                }
            }
        }
        for (int i = n - 1; i >= 0; i--) {
            for (int j = m - 1; j >= 0; j--) {
                if (grid[i][j] == 0) {
                    continue;
                }
                if (i + 1 < n) {
                    dp[i, j] = Math.Min(dp[i, j], dp[i + 1, j] + capacity);
                }
                if (j + 1 < m) {
                    dp[i, j] = Math.Min(dp[i, j], dp[i, j + 1] + capacity);
                }
            }
        }
        return dp[0, 0];

    }
    public static void Main(string[] args) {
    Debug.Assert(MaxFill((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)0, (int)0, (int)1, (int)0}), (List<int>)new List<int>(new int[]{(int)0, (int)1, (int)0, (int)0}), (List<int>)new List<int>(new int[]{(int)1, (int)1, (int)1, (int)1})})), (1)) == (6));
    Debug.Assert(MaxFill((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)0, (int)0, (int)1, (int)1}), (List<int>)new List<int>(new int[]{(int)0, (int)0, (int)0, (int)0}), (List<int>)new List<int>(new int[]{(int)1, (int)1, (int)1, (int)1}), (List<int>)new List<int>(new int[]{(int)0, (int)1, (int)1, (int)1})})), (2)) == (5));
    Debug.Assert(MaxFill((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)0, (int)0, (int)0}), (List<int>)new List<int>(new int[]{(int)0, (int)0, (int)0})})), (5)) == (0));
    Debug.Assert(MaxFill((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)1, (int)1, (int)1, (int)1}), (List<int>)new List<int>(new int[]{(int)1, (int)1, (int)1, (int)1})})), (2)) == (4));
    Debug.Assert(MaxFill((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)1, (int)1, (int)1, (int)1}), (List<int>)new List<int>(new int[]{(int)1, (int)1, (int)1, (int)1})})), (9)) == (2));
    }

}
