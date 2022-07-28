-- Given a positive integer n, return the count of the numbers of n-digit
-- positive integers that start or end with 1.
local function starts_one_ends(n)
  local count = 0
  for i = 1, n do
    if i ~= 1 and i ~= n then
      if ((i ^ 1) ^ i) == 1 then
        count = count + 1
      end
    end
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