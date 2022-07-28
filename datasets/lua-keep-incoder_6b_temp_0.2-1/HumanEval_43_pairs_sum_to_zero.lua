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
  local function helper(l, i, j)
    if i == j then
      return true
    end
    if l[i] == 0 then
      return false
    end
    return helper(l, i + 1, j) or helper(l, i, j - 1)
  end
  return helper(l, 1, #l)
end

-- Returns True if a list contains no duplicates.
-- >>> no_duplicates([1, 2, 3])
-- True
-- >>> no_duplicates([1, 2, 3, 1])
-- False
-- >>> no_duplicates([1])
-- False

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