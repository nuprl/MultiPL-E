-- Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
-- >>> fizz_buzz(50)
-- 0
-- >>> fizz_buzz(78)
-- 2
-- >>> fizz_buzz(79)
-- 3
local function fizz_buzz(n)
  if n < 0 then
    return 0
  end
  if n < 11 then
    return n
  end
  if n % 11 == 0 then
    return n
  end
  if n % 13 == 0 then
    return n
  end
  return fizz_buzz(n - 1) + 1
end

-- Return the number of times the digit 7 appears in integers less than n which are divisible by 13 or 15.
-- >>> fizz_buzz(50)
-- 0
-- >>> fizz_buzz(78)
-- 2
-- >>> fizz_buzz(79)
-- 3

lu = require('luaunit')

function test_humaneval()
local candidate = fizz_buzz
    lu.assertEquals(candidate(50), 0)
    lu.assertEquals(candidate(78), 2)
    lu.assertEquals(candidate(79), 3)
    lu.assertEquals(candidate(100), 3)
    lu.assertEquals(candidate(200), 6)
    lu.assertEquals(candidate(4000), 192)
    lu.assertEquals(candidate(10000), 639)
    lu.assertEquals(candidate(100000), 8026)
end

os.exit(lu.LuaUnit.run())