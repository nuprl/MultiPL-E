-- Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
-- >>> fizz_buzz(50)
-- 0
-- >>> fizz_buzz(78)
-- 2
-- >>> fizz_buzz(79)
-- 3
local function fizz_buzz(n)
  local count = 0
  for i = 1, n do
    if i % 11 == 0 or i % 13 == 0 then
      count = count + string.sub(tostring(i), -1) == "7" and 1 or 0
    end
  end
  return count
end

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