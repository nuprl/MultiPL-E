-- You are given a rectangular grid of wells. Each row represents a single well,
-- and each 1 in a row represents a single unit of water.
-- Each well has a corresponding bucket that can be used to extract water from it, 
-- and all buckets have the same capacity.
-- Your task is to use the buckets to empty the wells.
-- Output the number of times you need to lower the buckets.
-- Example 1:
-- Input: 
-- grid : [[0,0,1,0], [0,1,0,0], [1,1,1,1]]
-- bucket_capacity : 1
-- Output: 6
-- Example 2:
-- Input: 
-- grid : [[0,0,1,1], [0,0,0,0], [1,1,1,1], [0,1,1,1]]
-- bucket_capacity : 2
-- Output: 5
-- Example 3:
-- Input: 
-- grid : [[0,0,0], [0,0,0]]
-- bucket_capacity : 5
-- Output: 0
-- Constraints:
-- * all wells have the same length
-- * 1 <= grid.length <= 10^2
-- * 1 <= grid[:,1].length <= 10^2
-- * grid[i][j] -> 0 | 1
-- * 1 <= capacity <= 10
local function max_fill(grid, capacity)
    local num_wells = #grid
    local num_buckets = math.floor(num_wells/capacity)
    local bucket_capacity = capacity
    local bucket_num = 1
    local bucket_used = 0
    local num_empty = 0
    local num_full = 0
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used = 0
    local bucket_num = 1
    local bucket_used

lu = require('luaunit')

function test_humaneval()
local candidate = max_fill
    lu.assertEquals(candidate({{0, 0, 1, 0}, {0, 1, 0, 0}, {1, 1, 1, 1}}, 1), 6)
    lu.assertEquals(candidate({{0, 0, 1, 1}, {0, 0, 0, 0}, {1, 1, 1, 1}, {0, 1, 1, 1}}, 2), 5)
    lu.assertEquals(candidate({{0, 0, 0}, {0, 0, 0}}, 5), 0)
    lu.assertEquals(candidate({{1, 1, 1, 1}, {1, 1, 1, 1}}, 2), 4)
    lu.assertEquals(candidate({{1, 1, 1, 1}, {1, 1, 1, 1}}, 9), 2)
end

os.exit(lu.LuaUnit.run())