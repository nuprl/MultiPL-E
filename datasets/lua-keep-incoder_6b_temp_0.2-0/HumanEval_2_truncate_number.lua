-- Given a positive floating point number, it can be decomposed into
-- and integer part (largest integer smaller than given number) and decimals
-- (leftover part always smaller than 1).
-- Return the decimal part of the number.
-- >>> truncate_number(3.5)
-- 0.5
local function truncate_number(number)
  if number < 1 then
    return number
  end
  local factor = 1
  local decimals = 0
  while number >= factor do
    factor = factor * 10
    decimals = decimals + 1
  end
  local integer_part = math.floor(number)
  local fractional_part = number - integer_part
  return integer_part + fractional_part / factor
end

-- Given a positive floating point number, it can be decomposed into
-- and integer part (largest integer smaller than given number) and decimals
-- (leftover part always smaller than 1).
-- Return the integer part of the number.
-- >>> truncate_number(3.5)
-- 3

lu = require('luaunit')

function test_humaneval()
local candidate = truncate_number
    lu.assertEquals(candidate(3.5), 0.5)
    lu.assertEquals(candidate(1.25), 0.25)
    lu.assertEquals(candidate(123.0), 0.0)
end

os.exit(lu.LuaUnit.run())