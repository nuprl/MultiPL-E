-- pairs_sum_to_zero takes a list of integers as an input.
-- it returns True if there are two distinct elements in the list that
-- sum to zero, and False otherwise.
-- >>> pairs_sum_to_zero([1, 3, 5, 0])
-- False
-- >>> pairs_sum_to_zero([1, 3, -2, 1])
-- False
-- >>> pairs_sum_to_zero([1, 2, 3, 7])
-- False
-- >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
-- True
-- >>> pairs_sum_to_zero([1])
-- False
local function pairs_sum_to_zero(l)
    local seen = {}
    for i = 1, #l do
        if l[i] == 0 then
            return true
        end
        if seen[-l[i]] then
            return true
        end
        seen[l[i]] = true
    end
    return false
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = pairs_sum_to_zero
    lu.assertEquals(candidate({1, 3, 5, 0}), false)
    lu.assertEquals(candidate({1, 3, -2, 1}), false)
    lu.assertEquals(candidate({1, 2, 3, 7}), false)
    lu.assertEquals(candidate({2, 4, -5, 3, 5, 7}), true)
    lu.assertEquals(candidate({1}), false)
    lu.assertEquals(candidate({-3, 9, -1, 3, 2, 30}), true)
    lu.assertEquals(candidate({-3, 9, -1, 3, 2, 31}), true)
    lu.assertEquals(candidate({-3, 9, -1, 4, 2, 30}), false)
    lu.assertEquals(candidate({-3, 9, -1, 4, 2, 31}), false)
end

os.exit(lu.LuaUnit.run())