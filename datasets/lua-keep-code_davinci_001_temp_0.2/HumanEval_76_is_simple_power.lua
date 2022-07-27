-- Your task is to write a function that returns true if a number x is a simple
-- power of n and false in other cases.
-- x is a simple power of n if n**int=x
-- For example:
-- is_simple_power(1, 4) => true
-- is_simple_power(2, 2) => true
-- is_simple_power(8, 2) => true
-- is_simple_power(3, 2) => false
-- is_simple_power(3, 1) => false
-- is_simple_power(5, 3) => false
local function is_simple_power(x, n)
  -- your code here
  return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_simple_power
    lu.assertEquals(candidate(16, 2), true)
    lu.assertEquals(candidate(143214, 16), false)
    lu.assertEquals(candidate(4, 2), true)
    lu.assertEquals(candidate(9, 3), true)
    lu.assertEquals(candidate(16, 4), true)
    lu.assertEquals(candidate(24, 2), false)
    lu.assertEquals(candidate(128, 4), false)
    lu.assertEquals(candidate(12, 6), false)
    lu.assertEquals(candidate(1, 1), true)
    lu.assertEquals(candidate(1, 12), true)
end

os.exit(lu.LuaUnit.run())