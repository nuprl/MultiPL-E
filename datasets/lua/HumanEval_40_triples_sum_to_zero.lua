-- triples_sum_to_zero takes a list of integers as an input.
-- it returns True if there are three distinct elements in the list that
-- sum to zero, and False otherwise.
-- >>> triples_sum_to_zero([1, 3, 5, 0])
-- False
-- >>> triples_sum_to_zero([1, 3, -2, 1])
-- True
-- >>> triples_sum_to_zero([1, 2, 3, 7])
-- False
-- >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
-- True
-- >>> triples_sum_to_zero([1])
-- False
local function triples_sum_to_zero(l)
  local seen = {}
  for i = 1, #l do
    seen[l[i]] = true
  end
  for i = 1, #l do
    for j = i + 1, #l do
      local sum = l[i] + l[j]
      if seen[-sum] then
        return true
      end
    end
  end
  return false
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = triples_sum_to_zero
    lu.assertEquals(candidate({1, 3, 5, 0}), false)
    lu.assertEquals(candidate({1, 3, 5, -1}), false)
    lu.assertEquals(candidate({1, 3, -2, 1}), true)
    lu.assertEquals(candidate({1, 2, 3, 7}), false)
    lu.assertEquals(candidate({1, 2, 5, 7}), false)
    lu.assertEquals(candidate({2, 4, -5, 3, 9, 7}), true)
    lu.assertEquals(candidate({1}), false)
    lu.assertEquals(candidate({1, 3, 5, -100}), false)
    lu.assertEquals(candidate({100, 3, 5, -100}), false)
end

os.exit(lu.LuaUnit.run())