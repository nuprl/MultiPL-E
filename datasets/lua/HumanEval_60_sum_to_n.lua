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
  if n == 1 then
    return 1
  else
    return n + sum_to_n(n - 1)
  end
end
-- Unit tests below

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