using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a grid with N rows and N columns (N >= 2) and a positive integer k, 
    // each cell of the grid contains a value. Every integer in the range [1, N * N]
    // inclusive appears exactly once on the cells of the grid.
    // You have to find the minimum path of length k in the grid. You can start
    // from any cell, and in each step you can move to any of the neighbor cells,
    // in other words, you can go to cells which share an edge with you current
    // cell.
    // Please note that a path of length k means visiting exactly k cells (not
    // necessarily distinct).
    // You CANNOT go off the grid.
    // A path A (of length k) is considered less than a path B (of length k) if
    // after making the ordered lists of the values on the cells that A and B go
    // through (let's call them lst_A and lst_B), lst_A is lexicographically less
    // than lst_B, in other words, there exist an integer index i (1 <= i <= k)
    // such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have
    // lst_A[j] = lst_B[j].
    // It is guaranteed that the answer is unique.
    // Return an ordered list of the values on the cells that the minimum path go through.
    // Examples:
    // Input: grid = [ [1,2,3], [4,5,6], [7,8,9]], k = 3
    // Output: [1, 2, 1]
    // Input: grid = [ [5,9,3], [4,1,6], [7,8,2]], k = 1
    // Output: [1]
    public static List<int> Minpath(List<List<int>> grid, int k) {
        int N = grid.Count;
        List<int> ret = new List<int>();
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                if (grid[i][j] == 1) {
                    ret.Add(grid[i][j]);
                    grid[i][j] = 0;
                    break;
                }
            }
        }
        int[] dirs = { -1, 0, 1, 0, -1 };
        int[,] dp = new int[N, N];
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                dp[i, j] = int.MaxValue;
            }
        }
        dp[0, 0] = 0;
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                if (dp[i, j] == int.MaxValue) {
                    continue;
                }
                for (int d = 0; d < 4; d++) {
                    int nx = i + dirs[d];
                    int ny = j + dirs[d + 1];
                    if (nx < 0 || nx >= N || ny < 0 || ny >= N) {
                        continue;
                    }
                    if (dp[nx, ny] > dp[i, j] + grid[nx][ny]) {
                        dp[nx, ny] = dp[i, j] + grid[nx][ny];
                    }
                }
            }
        }
        int min = int.MaxValue;
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                if (dp[i, j] < min) {
                    min = dp[i, j];
                }
            }
        }
        for (int i = 0; i < N; i++) {
           

    }
    public static void Main(string[] args) {
    Debug.Assert(Minpath((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)1, (int)2, (int)3}), (List<int>)new List<int>(new int[]{(int)4, (int)5, (int)6}), (List<int>)new List<int>(new int[]{(int)7, (int)8, (int)9})})), (3)).Equals((new List<int>(new int[]{(int)1, (int)2, (int)1}))));
    Debug.Assert(Minpath((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)5, (int)9, (int)3}), (List<int>)new List<int>(new int[]{(int)4, (int)1, (int)6}), (List<int>)new List<int>(new int[]{(int)7, (int)8, (int)2})})), (1)).Equals((new List<int>(new int[]{(int)1}))));
    Debug.Assert(Minpath((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)1, (int)2, (int)3, (int)4}), (List<int>)new List<int>(new int[]{(int)5, (int)6, (int)7, (int)8}), (List<int>)new List<int>(new int[]{(int)9, (int)10, (int)11, (int)12}), (List<int>)new List<int>(new int[]{(int)13, (int)14, (int)15, (int)16})})), (4)).Equals((new List<int>(new int[]{(int)1, (int)2, (int)1, (int)2}))));
    Debug.Assert(Minpath((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)6, (int)4, (int)13, (int)10}), (List<int>)new List<int>(new int[]{(int)5, (int)7, (int)12, (int)1}), (List<int>)new List<int>(new int[]{(int)3, (int)16, (int)11, (int)15}), (List<int>)new List<int>(new int[]{(int)8, (int)14, (int)9, (int)2})})), (7)).Equals((new List<int>(new int[]{(int)1, (int)10, (int)1, (int)10, (int)1, (int)10, (int)1}))));
    Debug.Assert(Minpath((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)8, (int)14, (int)9, (int)2}), (List<int>)new List<int>(new int[]{(int)6, (int)4, (int)13, (int)15}), (List<int>)new List<int>(new int[]{(int)5, (int)7, (int)1, (int)12}), (List<int>)new List<int>(new int[]{(int)3, (int)10, (int)11, (int)16})})), (5)).Equals((new List<int>(new int[]{(int)1, (int)7, (int)1, (int)7, (int)1}))));
    Debug.Assert(Minpath((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)11, (int)8, (int)7, (int)2}), (List<int>)new List<int>(new int[]{(int)5, (int)16, (int)14, (int)4}), (List<int>)new List<int>(new int[]{(int)9, (int)3, (int)15, (int)6}), (List<int>)new List<int>(new int[]{(int)12, (int)13, (int)10, (int)1})})), (9)).Equals((new List<int>(new int[]{(int)1, (int)6, (int)1, (int)6, (int)1, (int)6, (int)1, (int)6, (int)1}))));
    Debug.Assert(Minpath((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)12, (int)13, (int)10, (int)1}), (List<int>)new List<int>(new int[]{(int)9, (int)3, (int)15, (int)6}), (List<int>)new List<int>(new int[]{(int)5, (int)16, (int)14, (int)4}), (List<int>)new List<int>(new int[]{(int)11, (int)8, (int)7, (int)2})})), (12)).Equals((new List<int>(new int[]{(int)1, (int)6, (int)1, (int)6, (int)1, (int)6, (int)1, (int)6, (int)1, (int)6, (int)1, (int)6}))));
    Debug.Assert(Minpath((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)2, (int)7, (int)4}), (List<int>)new List<int>(new int[]{(int)3, (int)1, (int)5}), (List<int>)new List<int>(new int[]{(int)6, (int)8, (int)9})})), (8)).Equals((new List<int>(new int[]{(int)1, (int)3, (int)1, (int)3, (int)1, (int)3, (int)1, (int)3}))));
    Debug.Assert(Minpath((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)6, (int)1, (int)5}), (List<int>)new List<int>(new int[]{(int)3, (int)8, (int)9}), (List<int>)new List<int>(new int[]{(int)2, (int)7, (int)4})})), (8)).Equals((new List<int>(new int[]{(int)1, (int)5, (int)1, (int)5, (int)1, (int)5, (int)1, (int)5}))));
    Debug.Assert(Minpath((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)1, (int)2}), (List<int>)new List<int>(new int[]{(int)3, (int)4})})), (10)).Equals((new List<int>(new int[]{(int)1, (int)2, (int)1, (int)2, (int)1, (int)2, (int)1, (int)2, (int)1, (int)2}))));
    Debug.Assert(Minpath((new List<List<int>>(new List<int>[]{(List<int>)new List<int>(new int[]{(int)1, (int)3}), (List<int>)new List<int>(new int[]{(int)3, (int)2})})), (10)).Equals((new List<int>(new int[]{(int)1, (int)3, (int)1, (int)3, (int)1, (int)3, (int)1, (int)3, (int)1, (int)3}))));
    }

}
