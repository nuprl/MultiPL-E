-- "Given an array representing a branch of a tree that has non-negative integer nodes
-- your task is to pluck one of the nodes and return it.
-- The plucked node should be the node with the smallest even value.
-- If multiple nodes with the same smallest even value are found return the node that has smallest index.
-- The plucked node should be returned in a list, [ smalest_value, its index ],
-- If there are no even values or the given array is empty, return [].
-- Example 1:
-- Input: [4,2,3]
-- Output: [2, 1]
-- Explanation: 2 has the smallest even value, and 2 has the smallest index.
-- Example 2:
-- Input: [1,2,3]
-- Output: [2, 1]
-- Explanation: 2 has the smallest even value, and 2 has the smallest index. 
-- Example 3:
-- Input: []
-- Output: []
-- Example 4:
-- Input: [5, 0, 3, 0, 4, 2]
-- Output: [0, 1]
-- Explanation: 0 is the smallest value, but  there are two zeros,
-- so we will choose the first zero, which has the smallest index.
-- Constraints:
-- * 1 <= nodes.length <= 10000
-- * 0 <= node.value
local function pluck(arr)
    local index = 1
    local smalest_value = arr[1]
    local smalest_index = 1
    for i = 2, #arr do
        if arr[i] < smalest_value then
            smalest_value = arr[i]
            smalest_index = index
        end
        index = index + 1
    end
    return smalest_value, smalest_index
end

-- Given an array representing a branch of a tree that has non-negative integer nodes
-- your task is to pluck one of the nodes and return it.
-- The plucked node should be the node with the smallest odd value.
-- If multiple nodes with the same smallest odd value are found return the node that has smallest index.
-- The plucked node should be returned in a list, [ smalest_value, its index ],
-- If there are no odd values or the given array is empty, return [].
-- Example 1:
-- Input: [4,2,3]
-- Output: [3, 1]
-- Explanation: 3 has the smallest odd value, and 3 has the smallest index.
-- Example 2:
-- Input: [1,2,3]
-- Output: [3, 1]
-- Explanation: 3 has the smallest odd value, and 3 has the smallest index. 
-- Example 3:
-- Input: []
-- Output: []
-- Example 4:
-- Input: [5, 0, 3, 0, 4, 2]
-- Output: [1, 3]
-- Explanation: 0 is the smallest value, but  there are three zeros,
-- so we will choose the first zero, which has the smallest index.
-- Constraints:
-- * 1 <= nodes.length <= 10000
-- * 0 <= node.value

lu = require('luaunit')

function test_humaneval()
local candidate = pluck
    lu.assertEquals(candidate({4, 2, 3}), {2, 1})
    lu.assertEquals(candidate({1, 2, 3}), {2, 1})
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({5, 0, 3, 0, 4, 2}), {0, 1})
    lu.assertEquals(candidate({1, 2, 3, 0, 5, 3}), {0, 3})
    lu.assertEquals(candidate({5, 4, 8, 4, 8}), {4, 1})
    lu.assertEquals(candidate({7, 6, 7, 1}), {6, 1})
    lu.assertEquals(candidate({7, 9, 7, 1}), {})
end

os.exit(lu.LuaUnit.run())