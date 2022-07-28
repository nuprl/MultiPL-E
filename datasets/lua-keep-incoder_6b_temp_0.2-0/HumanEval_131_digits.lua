-- Given a positive integer n, return the product of the odd digits.
-- Return 0 if all digits are even.
-- For example:
-- digits(1)  == 1
-- digits(4)  == 0
-- digits(235) == 15
local function digits(n)
  if n == 0 then
    return 0
  end
  local digit = 1
  local product = 1
  while n > 0 do
    product = product * digit
    n = n / 10
    digit = digit + 1
  end
  return product
end

-- Given a positive integer n, return the sum of the even digits.
-- Return 0 if all digits are even.
-- For example:
-- digits(1)  == 0
-- digits(4)  == 0
-- digits(235) == 35

lu = require('luaunit')

function test_humaneval()
local candidate = digits
    lu.assertEquals(candidate(5), 5)
    lu.assertEquals(candidate(54), 5)
    lu.assertEquals(candidate(120), 1)
    lu.assertEquals(candidate(5014), 5)
    lu.assertEquals(candidate(98765), 315)
    lu.assertEquals(candidate(5576543), 2625)
    lu.assertEquals(candidate(2468), 0)
end

os.exit(lu.LuaUnit.run())