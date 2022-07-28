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
  local function closest(num)
    local diff = math.abs(num - value)
    if diff < math.abs(num - math.floor(num)) then
      return num
    else
      return math.floor(num)
    end
  end
  return closest
end

-- Create a function that takes a value (string) representing a number
-- and returns the closest float to it. If the number is equidistant
-- from two floats, round it away from zero.
-- Examples
-- >>> closest_float("10")
-- 10.0
-- >>> closest_float("15.3")
-- 15.3
-- Note:
-- Rounding away from zero means that if the given number is equidistant
-- from two floats, the one you should return is the one that is the
-- farthest from zero. For example closest_float("14.5") should
-- return 14.0 and closest_float("-14.5") should return -14.0.

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