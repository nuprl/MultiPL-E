-- Return a greatest common divisor of two integers a and b
-- >>> greatest_common_divisor(3, 5)
-- 1
-- >>> greatest_common_divisor(25, 15)
-- 5
local function greatest_common_divisor(a, b)
  -- If b is 0, then return a
  if b == 0 then
    return a
  end

  -- If b is negative, then return greatest common divisor of a and -b
  if b < 0 then
    return greatest_common_divisor(-a, -b)
  end

  -- If b is positive, then return greatest common divisor of a and b
  if b > 0 then
    -- Initialize greatest common divisor to a
    local gcd = a

    -- Loop through all numbers from 1 to b
    for i = 1, b do
      -- If gcd divides a, then a is gcd and gcd is a
      if gcd % a == 0 then
        gcd = a
      else
        -- Otherwise, gcd divides b
        gcd = b
      end
    end

    -- Return greatest common divisor
    return gcd
  end
end

-- Return the least common multiple of two integers a and b
-- >>> least_common_multiple(6, 10)
-- 60
-- >>> least_common_multiple(6, 6)
-- 6

lu = require('luaunit')

function test_humaneval()
local candidate = greatest_common_divisor
    lu.assertEquals(candidate(3, 7), 1)
    lu.assertEquals(candidate(10, 15), 5)
    lu.assertEquals(candidate(49, 14), 7)
    lu.assertEquals(candidate(144, 60), 12)
end

os.exit(lu.LuaUnit.run())