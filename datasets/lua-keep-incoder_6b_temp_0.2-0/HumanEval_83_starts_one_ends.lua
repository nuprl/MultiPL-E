-- Given a positive integer n, return the count of the numbers of n-digit
-- positive integers that start or end with 1.
local function starts_one_ends(n)
  if n < 10 then
    return 0
  end
  local count = 0
  local i = 1
  while i <= n do
    count = count + 1
    i = i + 1
  end
  return count
end

-- Given a positive integer n, return the count of the numbers of n-digit
-- positive integers that start or end with 0.

lu = require('luaunit')

function test_humaneval()
local candidate = starts_one_ends
    lu.assertEquals(candidate(1), 1)
    lu.assertEquals(candidate(2), 18)
    lu.assertEquals(candidate(3), 180)
    lu.assertEquals(candidate(4), 1800)
    lu.assertEquals(candidate(5), 18000)
end

os.exit(lu.LuaUnit.run())