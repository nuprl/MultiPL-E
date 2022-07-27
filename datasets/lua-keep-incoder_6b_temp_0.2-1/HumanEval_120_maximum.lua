-- Given an array arr of integers and a positive integer k, return a sorted list 
-- of length k with the maximum k numbers in arr.
-- Example 1:
-- Input: arr = [-3, -4, 5], k = 3
-- Output: [-4, -3, 5]
-- Example 2:
-- Input: arr = [4, -4, 4], k = 2
-- Output: [4, 4]
-- Example 3:
-- Input: arr = [-3, 2, 1, 2, -1, -2, 1], k = 1
-- Output: [2]
-- Note:
-- 1. The length of the array will be in the range of [1, 1000].
-- 2. The elements in the array will be in the range of [-1000, 1000].
-- 3. 0 <= k <= len(arr)
local function maximum(arr, k)
    local max_arr = {}
    local max_count = 0
    for i = 1, k do
        max_count = max_count + 1
        if max_count > #max_arr then
            max_count = #max_arr
        end
        max_arr[i] = arr[max_count]
    end
    return max_arr
end

-- Given an array arr of integers and a positive integer k, return a sorted list 
-- of length k with the minimum k numbers in arr.
-- Example 1:
-- Input: arr = [-3, -4, 5], k = 3
-- Output: [-3, -4, -5]
-- Example 2:
-- Input: arr = [4, -4, 4], k = 2
-- Output: [-4, -4]
-- Example 3:
-- Input: arr = [-3, 2, 1, 2, -1, -2, 1], k = 1
-- Output: [-1, -2, -3]
-- Note:
-- 1. The length of the array will be in the range of [1, 1000].
-- 2. The elements in the array will be in the range of [-1000, 1000].
-- 3. 0 <= k <= len(arr)

lu = require('luaunit')

function test_humaneval()
local candidate = maximum
    lu.assertEquals(candidate({-3, -4, 5}, 3), {-4, -3, 5})
    lu.assertEquals(candidate({4, -4, 4}, 2), {4, 4})
    lu.assertEquals(candidate({-3, 2, 1, 2, -1, -2, 1}, 1), {2})
    lu.assertEquals(candidate({123, -123, 20, 0, 1, 2, -3}, 3), {2, 20, 123})
    lu.assertEquals(candidate({-123, 20, 0, 1, 2, -3}, 4), {0, 1, 2, 20})
    lu.assertEquals(candidate({5, 15, 0, 3, -13, -8, 0}, 7), {-13, -8, 0, 0, 3, 5, 15})
    lu.assertEquals(candidate({-1, 0, 2, 5, 3, -10}, 2), {3, 5})
    lu.assertEquals(candidate({1, 0, 5, -7}, 1), {5})
    lu.assertEquals(candidate({4, -4}, 2), {-4, 4})
    lu.assertEquals(candidate({-10, 10}, 2), {-10, 10})
    lu.assertEquals(candidate({1, 2, 3, -23, 243, -400, 0}, 0), {})
end

os.exit(lu.LuaUnit.run())