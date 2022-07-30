#include<assert.h>
#include<bits/stdc++.h>
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
long max_fill(std::vector<std::vector<long>> grid, long capacity) {
    long max_fill = 0;
    for (int i = 0; i < grid.size(); i++) {
        for (int j = 0; j < grid[i].size(); j++) {
            if (grid[i][j] == 1) {
                long fill = 0;
                for (int k = i; k >= 0; k--) {
                    if (grid[k][j] == 0) {
                        fill++;
                    } else {
                        break;
                    }
                }
                for (int k = i; k < grid.size(); k++) {
                    if (grid[k][j] == 0) {
                        fill++;
                    } else {
                        break;
                    }
                }
                if (fill > max_fill) {
                    max_fill = fill;
                }
            }
        }
    }
    return max_fill;

}
int main() {
    auto candidate = max_fill;
    assert(candidate((std::vector<std::vector<long>>({(std::vector<long>)std::vector<long>({(long)0, (long)0, (long)1, (long)0}), (std::vector<long>)std::vector<long>({(long)0, (long)1, (long)0, (long)0}), (std::vector<long>)std::vector<long>({(long)1, (long)1, (long)1, (long)1})})), (1)) == (6));
    assert(candidate((std::vector<std::vector<long>>({(std::vector<long>)std::vector<long>({(long)0, (long)0, (long)1, (long)1}), (std::vector<long>)std::vector<long>({(long)0, (long)0, (long)0, (long)0}), (std::vector<long>)std::vector<long>({(long)1, (long)1, (long)1, (long)1}), (std::vector<long>)std::vector<long>({(long)0, (long)1, (long)1, (long)1})})), (2)) == (5));
    assert(candidate((std::vector<std::vector<long>>({(std::vector<long>)std::vector<long>({(long)0, (long)0, (long)0}), (std::vector<long>)std::vector<long>({(long)0, (long)0, (long)0})})), (5)) == (0));
    assert(candidate((std::vector<std::vector<long>>({(std::vector<long>)std::vector<long>({(long)1, (long)1, (long)1, (long)1}), (std::vector<long>)std::vector<long>({(long)1, (long)1, (long)1, (long)1})})), (2)) == (4));
    assert(candidate((std::vector<std::vector<long>>({(std::vector<long>)std::vector<long>({(long)1, (long)1, (long)1, (long)1}), (std::vector<long>)std::vector<long>({(long)1, (long)1, (long)1, (long)1})})), (9)) == (2));
}
