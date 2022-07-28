-- sum_to_n is a function that sums numbers from 1 to n.
-- >>> sum_to_n(30)
-- 465
-- >>> sum_to_n(100)
-- 5050
-- >>> sum_to_n(5)
-- 15
-- >>> sum_to_n(10)
-- 55
-- >>> sum_to_n(1)
-- 1
local function sum_to_n(n)
  local sum = 0
  for i = 1, n do
    sum = sum + i
  end
  return sum
end

-- sum_to_n is a function that sums numbers from 1 to n.
-- >>> sum_to_n(30)
-- 465
-- >>> sum_to_n(100)
-- 5050
-- >>> sum_to_n(5)
-- 15
-- >>> sum_to_n(10)
-- 55
-- >>> sum_to_n(1)
-- 1

lu = require('luaunit')

function test_humaneval()
local candidate = sum_to_n
    lu.assertEquals(candidate(1), 1)
    lu.assertEquals(candidate(6), 21)
    lu.assertEquals(candidate(11), 66)
    lu.assertEquals(candidate(30), 465)
    lu.assertEquals(candidate(100), 5050)
end

os.exit(lu.LuaUnit.run())