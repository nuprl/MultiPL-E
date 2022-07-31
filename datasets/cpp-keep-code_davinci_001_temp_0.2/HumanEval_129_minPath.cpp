#include<assert.h>
#include<bits/stdc++.h>
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
std::vector<long> minPath(std::vector<std::vector<long>> grid, long k) {
    std::vector<std::vector<long>> dp(grid.size(), std::vector<long>(grid[0].size(), 0));
    std::vector<std::vector<long>> dp2(grid.size(), std::vector<long>(grid[0].size(), 0));
    for (int i = 0; i < grid.size(); i++) {
        for (int j = 0; j < grid[0].size(); j++) {
            dp[i][j] = grid[i][j];
            dp2[i][j] = grid[i][j];
        }
    }
    for (int i = 0; i < grid.size(); i++) {
        for (int j = 0; j < grid[0].size(); j++) {
            if (i > 0) {
                dp[i][j] = std::min(dp[i][j], dp[i - 1][j] + grid[i][j]);
            }
            if (j > 0) {
                dp[i][j] = std::min(dp[i][j], dp[i][j - 1] + grid[i][j]);
            }
        }
    }
    for (int i = grid.size() - 1; i >= 0; i--) {
        for (int j = grid[0].size() - 1; j >= 0; j--) {
            if (i < grid.size() - 1) {
                dp2[i][j] = std::min(dp2[i][j], dp2[i + 1][j] + grid[i][j]);
            }
            if (j < grid[0].size() - 1) {
                dp2[i][j] = std::min(dp2[i][j], dp2[i][j + 1] + grid[i][j]);
            }
        }
    }
    std::vector<long> ans;
    for (int i = 0; i < grid.size(); i++) {
        for (int j = 0; j < grid[0].size(); j++) {
           

}
int main() {
    auto candidate = minPath;
    assert(candidate((std::vector<std::vector<long>>({(std::vector<long>)std::vector<long>({(long)1, (long)2, (long)3}), (std::vector<long>)std::vector<long>({(long)4, (long)5, (long)6}), (std::vector<long>)std::vector<long>({(long)7, (long)8, (long)9})})), (3)) == (std::vector<long>({(long)1, (long)2, (long)1})));
    assert(candidate((std::vector<std::vector<long>>({(std::vector<long>)std::vector<long>({(long)5, (long)9, (long)3}), (std::vector<long>)std::vector<long>({(long)4, (long)1, (long)6}), (std::vector<long>)std::vector<long>({(long)7, (long)8, (long)2})})), (1)) == (std::vector<long>({(long)1})));
    assert(candidate((std::vector<std::vector<long>>({(std::vector<long>)std::vector<long>({(long)1, (long)2, (long)3, (long)4}), (std::vector<long>)std::vector<long>({(long)5, (long)6, (long)7, (long)8}), (std::vector<long>)std::vector<long>({(long)9, (long)10, (long)11, (long)12}), (std::vector<long>)std::vector<long>({(long)13, (long)14, (long)15, (long)16})})), (4)) == (std::vector<long>({(long)1, (long)2, (long)1, (long)2})));
    assert(candidate((std::vector<std::vector<long>>({(std::vector<long>)std::vector<long>({(long)6, (long)4, (long)13, (long)10}), (std::vector<long>)std::vector<long>({(long)5, (long)7, (long)12, (long)1}), (std::vector<long>)std::vector<long>({(long)3, (long)16, (long)11, (long)15}), (std::vector<long>)std::vector<long>({(long)8, (long)14, (long)9, (long)2})})), (7)) == (std::vector<long>({(long)1, (long)10, (long)1, (long)10, (long)1, (long)10, (long)1})));
    assert(candidate((std::vector<std::vector<long>>({(std::vector<long>)std::vector<long>({(long)8, (long)14, (long)9, (long)2}), (std::vector<long>)std::vector<long>({(long)6, (long)4, (long)13, (long)15}), (std::vector<long>)std::vector<long>({(long)5, (long)7, (long)1, (long)12}), (std::vector<long>)std::vector<long>({(long)3, (long)10, (long)11, (long)16})})), (5)) == (std::vector<long>({(long)1, (long)7, (long)1, (long)7, (long)1})));
    assert(candidate((std::vector<std::vector<long>>({(std::vector<long>)std::vector<long>({(long)11, (long)8, (long)7, (long)2}), (std::vector<long>)std::vector<long>({(long)5, (long)16, (long)14, (long)4}), (std::vector<long>)std::vector<long>({(long)9, (long)3, (long)15, (long)6}), (std::vector<long>)std::vector<long>({(long)12, (long)13, (long)10, (long)1})})), (9)) == (std::vector<long>({(long)1, (long)6, (long)1, (long)6, (long)1, (long)6, (long)1, (long)6, (long)1})));
    assert(candidate((std::vector<std::vector<long>>({(std::vector<long>)std::vector<long>({(long)12, (long)13, (long)10, (long)1}), (std::vector<long>)std::vector<long>({(long)9, (long)3, (long)15, (long)6}), (std::vector<long>)std::vector<long>({(long)5, (long)16, (long)14, (long)4}), (std::vector<long>)std::vector<long>({(long)11, (long)8, (long)7, (long)2})})), (12)) == (std::vector<long>({(long)1, (long)6, (long)1, (long)6, (long)1, (long)6, (long)1, (long)6, (long)1, (long)6, (long)1, (long)6})));
    assert(candidate((std::vector<std::vector<long>>({(std::vector<long>)std::vector<long>({(long)2, (long)7, (long)4}), (std::vector<long>)std::vector<long>({(long)3, (long)1, (long)5}), (std::vector<long>)std::vector<long>({(long)6, (long)8, (long)9})})), (8)) == (std::vector<long>({(long)1, (long)3, (long)1, (long)3, (long)1, (long)3, (long)1, (long)3})));
    assert(candidate((std::vector<std::vector<long>>({(std::vector<long>)std::vector<long>({(long)6, (long)1, (long)5}), (std::vector<long>)std::vector<long>({(long)3, (long)8, (long)9}), (std::vector<long>)std::vector<long>({(long)2, (long)7, (long)4})})), (8)) == (std::vector<long>({(long)1, (long)5, (long)1, (long)5, (long)1, (long)5, (long)1, (long)5})));
    assert(candidate((std::vector<std::vector<long>>({(std::vector<long>)std::vector<long>({(long)1, (long)2}), (std::vector<long>)std::vector<long>({(long)3, (long)4})})), (10)) == (std::vector<long>({(long)1, (long)2, (long)1, (long)2, (long)1, (long)2, (long)1, (long)2, (long)1, (long)2})));
    assert(candidate((std::vector<std::vector<long>>({(std::vector<long>)std::vector<long>({(long)1, (long)3}), (std::vector<long>)std::vector<long>({(long)3, (long)2})})), (10)) == (std::vector<long>({(long)1, (long)3, (long)1, (long)3, (long)1, (long)3, (long)1, (long)3, (long)1, (long)3})));
}
