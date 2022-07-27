-- Create a function that takes a value (string) representing a number
-- and returns the closest integer to it. If the number is equidistant
-- from two integers, round it away from zero.
-- Examples
-- >>> closest_integer("10")
-- 10
-- >>> closest_integer("15.3")
-- 15
-- Note:
-- Rounding away from zero means that if the given number is equidistant
-- from two integers, the one you should return is the one that is the
-- farthest from zero. For example closest_integer("14.5") should
-- return 15 and closest_integer("-14.5") should return -15.
local function closest_integer(value)
  local integer, decimal = value:match("(%d+)%.(%d+)")
  local integer_value = tonumber(integer)
  local decimal_value = tonumber(decimal)
  local decimal_value_rounded = decimal_value >= 0 and math.ceil(decimal_value) or math.floor(decimal_value)
  local decimal_value_rounded_to_integer = decimal_value_rounded + integer_value
  local decimal_value_rounded_to_integer_rounded = decimal_value_rounded_to_integer >= 0 and math.ceil(decimal_value_rounded_to_integer) or math.floor(decimal_value_rounded_to_integer)
  return decimal_value_rounded_to_integer_rounded
end

lu = require('luaunit')

function test_humaneval()
local candidate = closest_integer
    lu.assertEquals(candidate('10'), 10)
    lu.assertEquals(candidate('14.5'), 15)
    lu.assertEquals(candidate('-15.5'), -16)
    lu.assertEquals(candidate('15.3'), 15)
    lu.assertEquals(candidate('0'), 0)
end

os.exit(lu.LuaUnit.run())