-- For a given number n, find the largest number that divides n evenly, smaller than n
-- >>> largest_divisor(15)
-- 5
local function largest_divisor(n)
  -- The largest divisor is one less than the square root of n
  -- >>> largest_divisor(15)
  -- 5
  -- >>> largest_divisor(10)
  -- 5
  -- >>> largest_divisor(100)
  -- 5
  -- >>> largest_divisor(1000)
  -- 5
  -- >>> largest_divisor(10000)
  -- 5
  -- >>> largest_divisor(100000)
  -- 5
  -- >>> largest_divisor(1000000)
  -- 5
  -- >>> largest_divisor(10000000)
  -- 5
  -- >>> largest_divisor(100000000)
  -- 5
  -- >>> largest_divisor(1000000000)
  -- 5
  -- >>> largest_divisor(10000000000)
  -- 5
  -- >>> largest_divisor(100000000000)
  -- 5
  -- >>> largest_divisor(1000000000000)
  -- 5
  -- >>> largest_divisor(10000000000000)
  -- 5
  -- >>> largest_divisor(100000000000000)
  -- 5
  -- >>> largest_divisor(1000000000000000)
  -- 5
  -- >>> largest_divisor(10000000000000000)
  -- 5
  -- >>> largest_divisor(100000000000000000)
  -- 5
  -- >>> largest_divisor(1000000000000000000)
  -- 5
  -- >>> largest_divisor(10000000000000000000)
  -- 5
  -- >>> largest_divisor(100000000000000000000)
  -- 5
  -- >>> largest_divisor(1000000000000000000000)
  -- 5
  -- >>> largest_divisor(10000000000000000000000)
  -- 5
  -- >>> largest_divisor(100000000000000000000000)
  -- 5
  -- >>> largest_divisor(1000000000000000000000000)
  -- 5
  -- >>> largest_divisor(10000000000000000000000000)
  -- 5
  -- >>> largest_divisor(100000000000000000000000000)
  -- 5
  -- >>> largest_divisor(1000000000000000000000000000)
  -- 5
  -- >>> largest_divisor(10000000000000000000000000000)
  -- 5
  -- >>> largest_divisor(100000000000000000000000000000)
  -- 5
  -- >>> largest_divisor(1000000000000000000000000000000)
  -- 5
  -- >>> largest_divisor(10000000000000000000000000000000)
  -- 5
  -- >>> largest_divisor(100000000000000000000000000000000)


lu = require('luaunit')

function test_humaneval()
local candidate = largest_divisor
    lu.assertEquals(candidate(3), 1)
    lu.assertEquals(candidate(7), 1)
    lu.assertEquals(candidate(10), 5)
    lu.assertEquals(candidate(100), 50)
    lu.assertEquals(candidate(49), 7)
end

os.exit(lu.LuaUnit.run())