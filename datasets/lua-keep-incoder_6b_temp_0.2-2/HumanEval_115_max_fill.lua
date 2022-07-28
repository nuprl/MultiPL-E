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
    local bucket_count = 0
    local bucket_capacity = capacity
    local bucket_size = bucket_capacity
    local bucket_remain = bucket_capacity
    local bucket_remaining = bucket_capacity
    local bucket_index = 1
    local bucket_index2 = 0
    local bucket_index3 = 0
    local bucket_index4 = 0
    local bucket_index5 = 0
    local bucket_index6 = 0
    local bucket_index7 = 0
    local bucket_index8 = 0
    local bucket_index9 = 0
    local bucket_index10 = 0
    local bucket_index11 = 0
    local bucket_index12 = 0
    local bucket_index13 = 0
    local bucket_index14 = 0
    local bucket_index15 = 0
    local bucket_index16 = 0
    local bucket_index17 = 0
    local bucket_index18 = 0
    local bucket_index19 = 0
    local bucket_index20 = 0
    local bucket_index21 = 0
    local bucket_index22 = 0
    local bucket_index23 = 0
    local bucket_index24 = 0
    local bucket_index25 = 0
    local bucket_index26 = 0
    local bucket_index27 = 0
    local bucket_index28 = 0
    local bucket_index29 = 0
    local bucket_index30 = 0
    local bucket_index31 = 0
    local bucket_index32 = 0
    local bucket_index33 = 0
    local bucket_index34 = 0
    local bucket_index35 = 0
    local bucket_index36 = 0
    local bucket_index37 = 0
    local bucket_index38 = 0
    local bucket_index39 = 0
    local bucket_index40 = 0
    local bucket_index41 = 0
    local bucket_index42 = 0
    local bucket_index43 = 0
    local bucket_index44 = 0
    local bucket_index45 = 0
    local bucket_index46 = 0
    local bucket_index47 = 0
    local bucket_index48 = 0
    local bucket_index49 = 0
    local bucket_index50 = 0
    local bucket_index51 = 0
    local bucket_index52 = 0
    local bucket_index53 = 0
    local bucket_index54 = 0
    local bucket_index55 = 0
    local bucket_index56 = 0
    local bucket_index57 = 0
    local bucket_index58 = 0
    local bucket_index59 = 0
    local bucket_index60 = 0
    local bucket_index61 = 0
    local bucket_index62 = 0
    local bucket_index63 = 0
    local bucket_index64 = 0
    local bucket_index65 = 0
    local bucket_index66 = 0
    local bucket_index67 = 0
    local bucket_index68 = 0
    local 

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