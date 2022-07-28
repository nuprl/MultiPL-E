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
  if n == 1 then return true end
  if n == 0 then return false end
  if x == 1 then return true end
  if x == 0 then return false end
  if n % 2 == 0 then return is_simple_power(x, n / 2) end
  return is_simple_power(x * x, n / 2)
end

-- Your task is to write a function that returns the number of divisors of a given number
-- that is a simple power of n.
-- x is a simple power of n if n**int=x
-- For example:
-- count_divisors(1, 4) => 1
-- count_divisors(2, 2) => 1
-- count_divisors(8, 2) => 2
-- count_divisors(3, 2) => 0
-- count_divisors(3, 1) => 0
-- count_divisors(5, 3) => 0

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