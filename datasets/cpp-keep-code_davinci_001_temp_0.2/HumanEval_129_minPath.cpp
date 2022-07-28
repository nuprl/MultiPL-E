#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
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
    dp[0][0] = grid[0][0];
    for (int i = 1; i < grid.size(); i++) {
        dp[i][0] = dp[i - 1][0] + grid[i][0];
    }
    for (int i = 1; i < grid[0].size(); i++) {
        dp[0][i] = dp[0][i - 1] + grid[0][i];
    }
    for (int i = 1; i < grid.size(); i++) {
        for (int j = 1; j < grid[0].size(); j++) {
            dp[i][j] = std::min(dp[i - 1][j], dp[i][j - 1]) + grid[i][j];
        }
    }
    std::vector<long> res;
    for (int i = 0; i < grid.size(); i++) {
        for (int j = 0; j < grid[0].size(); j++) {
            if (dp[i][j] >= k) {
                res.push_back(grid[i][j]);
                k -= grid[i][j];
                break;
            }
        }
    }
    return res;
}


int main() {
    auto candidate = minPath;
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({1, 2, 3}), std::vector<long>({4, 5, 6}), std::vector<long>({7, 8, 9})})), (3)) == (std::vector<long>({1, 2, 1})));
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({5, 9, 3}), std::vector<long>({4, 1, 6}), std::vector<long>({7, 8, 2})})), (1)) == (std::vector<long>({1})));
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({1, 2, 3, 4}), std::vector<long>({5, 6, 7, 8}), std::vector<long>({9, 10, 11, 12}), std::vector<long>({13, 14, 15, 16})})), (4)) == (std::vector<long>({1, 2, 1, 2})));
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({6, 4, 13, 10}), std::vector<long>({5, 7, 12, 1}), std::vector<long>({3, 16, 11, 15}), std::vector<long>({8, 14, 9, 2})})), (7)) == (std::vector<long>({1, 10, 1, 10, 1, 10, 1})));
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({8, 14, 9, 2}), std::vector<long>({6, 4, 13, 15}), std::vector<long>({5, 7, 1, 12}), std::vector<long>({3, 10, 11, 16})})), (5)) == (std::vector<long>({1, 7, 1, 7, 1})));
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({11, 8, 7, 2}), std::vector<long>({5, 16, 14, 4}), std::vector<long>({9, 3, 15, 6}), std::vector<long>({12, 13, 10, 1})})), (9)) == (std::vector<long>({1, 6, 1, 6, 1, 6, 1, 6, 1})));
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({12, 13, 10, 1}), std::vector<long>({9, 3, 15, 6}), std::vector<long>({5, 16, 14, 4}), std::vector<long>({11, 8, 7, 2})})), (12)) == (std::vector<long>({1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6})));
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({2, 7, 4}), std::vector<long>({3, 1, 5}), std::vector<long>({6, 8, 9})})), (8)) == (std::vector<long>({1, 3, 1, 3, 1, 3, 1, 3})));
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({6, 1, 5}), std::vector<long>({3, 8, 9}), std::vector<long>({2, 7, 4})})), (8)) == (std::vector<long>({1, 5, 1, 5, 1, 5, 1, 5})));
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({1, 2}), std::vector<long>({3, 4})})), (10)) == (std::vector<long>({1, 2, 1, 2, 1, 2, 1, 2, 1, 2})));
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({1, 3}), std::vector<long>({3, 2})})), (10)) == (std::vector<long>({1, 3, 1, 3, 1, 3, 1, 3, 1, 3})));
}