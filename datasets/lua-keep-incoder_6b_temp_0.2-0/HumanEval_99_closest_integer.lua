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
  local function is_equidistant(a, b)
    return math.abs(a - b) < 1e-6
  end
  local function is_close_to_zero(a)
    return math.abs(a) < 1e-6
  end
  local function is_close_to_one(a)
    return math.abs(a) < 1e-5
  end
  local function is_close_to_two(a)
    return math.abs(a) < 1e-4
  end
  local function is_close_to_three(a)
    return math.abs(a) < 1e-3
  end
  local function is_close_to_four(a)
    return math.abs(a) < 1e-2
  end
  local function is_close_to_five(a)
    return math.abs(a) < 1e-1
  end
  local function is_close_to_six(a)
    return math.abs(a) < 1e0
  end
  local function is_close_to_seven(a)
    return math.abs(a) < 1e1
  end
  local function is_close_to_eight(a)
    return math.abs(a) < 1e2
  end
  local function is_close_to_nine(a)
    return math.abs(a) < 1e3
  end
  local function is_close_to_ten(a)
    return math.abs(a) < 1e4
  end
  local function is_close_to_eleven(a)
    return math.abs(a) < 1e5
  end
  local function is_close_to_twelve(a)
    return math.abs(a) < 1e6
  end
  local function is_close_to_thirteen(a)
    return math.abs(a) < 1e7
  end
  local function is_close_to_fourteen(a)
    return math.abs(a) < 1e8
  end
  local function is_close_to_fifteen(a)
    return math.abs(a) < 1e9
  end
  local function is_close_to_sixteen(a)
    return math.abs(a) < 1e10
  end
  local function is_close_to_seventeen(a)
    return math.abs(a) < 1e11
  end
  local function is_close_to_eighteen(a)
    return math.abs(a) < 1e12
  end
  local function is_close_to_nineteen(a)
    return math.abs(a) < 1e13
  end
  local function is_close_to_twenty(a)
    return math.abs(a) < 1e14
  end
  local function is_close_to_twenty_one(a)
    return math.abs(a) < 1e15
  end
  local function is_close_to_twenty_two(a)
    return math.abs(a) < 1e16
  end
  local function is_close_to_twenty_three(a)
    return math.abs(a) < 1e17
  end
  local function is_close_to_tw

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