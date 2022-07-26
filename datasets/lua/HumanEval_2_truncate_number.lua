-- Given a positive floating point number, it can be decomposed into
-- and integer part (largest integer smaller than given number) and decimals
-- (leftover part always smaller than 1).
-- Return the decimal part of the number.
-- >>> truncate_number(3.5)
-- 0.5
local function truncate_number(number)
  local integer_part = math.floor(number)
  return number - integer_part
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = truncate_number
    lu.assertEquals(candidate(3.5), 0.5)
    lu.assertEquals(candidate(1.25), 0.25)
    lu.assertEquals(candidate(123.0), 0.0)
end

os.exit(lu.LuaUnit.run())