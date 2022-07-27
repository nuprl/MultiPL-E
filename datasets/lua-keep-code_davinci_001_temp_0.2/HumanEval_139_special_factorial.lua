-- The Brazilian factorial is defined as:
-- brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
-- where n > 0
-- For example:
-- >>> special_factorial(4)
-- 288
-- The function will receive an integer as input and should return the special
-- factorial of this integer.
local function special_factorial(n)
  local factorial = 1
  for i = 1, n do
    factorial = factorial * i
  end
  return factorial
end

lu = require('luaunit')

function test_humaneval()
local candidate = special_factorial
    lu.assertEquals(candidate(4), 288)
    lu.assertEquals(candidate(5), 34560)
    lu.assertEquals(candidate(7), 125411328000)
    lu.assertEquals(candidate(1), 1)
end

os.exit(lu.LuaUnit.run())