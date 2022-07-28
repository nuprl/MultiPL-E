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
  local pairs = {}
  for i = 1, #l do
    local pair = l[i], l[i - 1] -- pair is pair (l[i], l[i - 1])
    if pair[1] ~= 0 then
      table.insert(pairs, pair)
    end
  end
  local zeros = #pairs
  if zeros == 0 then
    return false
  end
  local zero = pairs[zeros - 1]
  for i = 1, zeros - 1 do
    local pair = pairs[i]
    if pair[1] == zero then
      return true
    end
  end
  return false
end

-- Returns true if all elements in the list are zero, false otherwise.
-- >>> all_zeros([1, 2, 3, 0])
-- True
-- >>> all_zeros([1, 3, -2, 1])
-- False
-- >>> all_zeros([1, 2, 3, 7])
-- False
-- >>> all_zeros([2, 4, -5, 3, 5, 7])
-- True
-- >>> all_zeros([1])
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