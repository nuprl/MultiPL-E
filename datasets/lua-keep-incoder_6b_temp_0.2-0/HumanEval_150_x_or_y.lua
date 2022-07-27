-- A simple program which should return the value of x if n is 
-- a prime number and should return the value of y otherwise.
-- Examples:
-- for x_or_y(7, 34, 12) == 34
-- for x_or_y(15, 8, 5) == 5
local function x_or_y(n, x, y)
  if n == 2 or n == 3 then
    return y
  elseif n%2 == 0 or n%3 == 0 then
    return x_or_y(n-1, x, y)
  else
    return x_or_y(n-1, x, x_or_y(n-1, y, x))
  end
end

-- A simple program which should return the value of x if n is 
-- a prime number and should return the value of y otherwise.
-- Examples:
-- for x_or_y(7, 34, 12) == 34
-- for x_or_y(15, 8, 5) == 5

lu = require('luaunit')

function test_humaneval()
local candidate = x_or_y
    lu.assertEquals(candidate(7, 34, 12), 34)
    lu.assertEquals(candidate(15, 8, 5), 5)
    lu.assertEquals(candidate(3, 33, 5212), 33)
    lu.assertEquals(candidate(1259, 3, 52), 3)
    lu.assertEquals(candidate(7919, -1, 12), -1)
    lu.assertEquals(candidate(3609, 1245, 583), 583)
    lu.assertEquals(candidate(91, 56, 129), 129)
    lu.assertEquals(candidate(6, 34, 1234), 1234)
    lu.assertEquals(candidate(1, 2, 0), 0)
    lu.assertEquals(candidate(2, 2, 0), 2)
end

os.exit(lu.LuaUnit.run())