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
    local num_buckets = math.ceil(math.log2(bucket_capacity))
    local num_buckets_pow2 = math.pow(2, num_buckets)
    local bucket_capacity = bucket_capacity
    local bucket_size = bucket_capacity / num_buckets_pow2
    local bucket_capacity_pow2 = math.pow(2, bucket_capacity)
    local bucket_size_pow2 = math.pow(2, bucket_size)
    local bucket_size_capacity = bucket_size_pow2 * bucket_capacity_pow2
    local bucket_size_capacity_pow2 = math.pow(2, bucket_size_capacity)
    local bucket_size_capacity_pow3 = math.pow(3, bucket_size_capacity_pow2)
    local bucket_size_capacity_pow4 = math.pow(4, bucket_size_capacity_pow3)
    local bucket_size_capacity_pow5 = math.pow(5, bucket_size_capacity_pow4)
    local bucket_size_capacity_pow6 = math.pow(6, bucket_size_capacity_pow5)
    local bucket_size_capacity_pow7 = math.pow(7, bucket_size_capacity_pow6)
    local bucket_size_capacity_pow8 = math.pow(8, bucket_size_capacity_pow7)
    local bucket_size_capacity_pow9 = math.pow(9, bucket_size_capacity_pow8)
    local bucket_size_capacity_pow10 = math.pow(10, bucket_size_capacity_pow9)
    local bucket_size_capacity_pow11 = math.pow(11, bucket_size_capacity_pow10)
    local bucket_size_capacity_pow12 = math.pow(12, bucket_size_capacity_pow11)
    local bucket_size_capacity_pow13 = math.pow(13, bucket_size_capacity_pow12)
    local bucket_size_capacity_pow14 = math.pow(14, bucket_size_capacity_pow13)
    local bucket_size_capacity_pow15 = math.pow(15, bucket_size_capacity_pow14)
    local bucket_size_capacity_pow16 = math.pow(16, bucket_size_capacity_pow15)
    local bucket_size_capacity_pow17 = math.pow(17, bucket_size_capacity_pow16)
    local bucket_size_capacity_pow18 = math.pow(18, bucket_size_capacity_pow17)
    local bucket_size_capacity_pow19 = math.pow(19, bucket_size_capacity_pow18)
    local bucket_size_capacity_pow20 = math.pow(20, bucket_size_capacity_pow19)
    local bucket_size_capacity_pow21 = math.pow(2, bucket_size_capacity_pow20)
    local bucket_size

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