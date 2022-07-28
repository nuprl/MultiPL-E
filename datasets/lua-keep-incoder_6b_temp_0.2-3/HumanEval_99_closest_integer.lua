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
    return math.abs(a - b) <= math.abs(a) + math.abs(b)
  end
  local function is_close_to_zero(a)
    return math.abs(a) <= math.abs(a) + 1e-10
  end
  local function is_close_to_one(a)
    return math.abs(a) <= math.abs(a) + 1e-5
  end
  local function is_close_to_two(a)
    return math.abs(a) <= math.abs(a) + 1e-2
  end
  local function is_close_to_three(a)
    return math.abs(a) <= math.abs(a) + 1e-3
  end
  local function is_close_to_four(a)
    return math.abs(a) <= math.abs(a) + 1e-4
  end
  local function is_close_to_five(a)
    return math.abs(a) <= math.abs(a) + 1e-5
  end
  local function is_close_to_six(a)
    return math.abs(a) <= math.abs(a) + 1e-6
  end
  local function is_close_to_seven(a)
    return math.abs(a) <= math.abs(a) + 1e-7
  end
  local function is_close_to_eight(a)
    return math.abs(a) <= math.abs(a) + 1e-8
  end
  local function is_close_to_nine(a)
    return math.abs(a) <= math.abs(a) + 1e-9
  end
  local function is_close_to_ten(a)
    return math.abs(a) <= math.abs(a) + 1e-10
  end
  local function is_close_to_eleven(a)
    return math.abs(a) <= math.abs(a) + 1e-11
  end
  local function is_close_to_twelve(a)
    return math.abs(a) <= math.abs(a) + 1e-12
  end
  local function is_close_to_thirteen(a)
    return math.abs(a) <= math.abs(a) + 1e-13
  end
  local function is_close_to_fourteen(a)
    return math.abs(a) <= math.abs(a) + 1e-14
  end
  local function is_close_to_fifteen(a)
    return math.abs(a) <= math.abs(a) + 1e-15
  end
  local function is_close_to_sixteen(a)
    return math.abs(a) <= math.abs(a) + 1e-16
  end
  local function is_close_to_seventeen(a)
    return math.abs(a) <= math.abs(a) + 1e-17
  end
  local function is_close_to_eighteen(a)
    return math.abs(a) <= math.abs(a) + 1e-18
  end
  local function is_close_to_nineteen(a)
    return math.abs(a) <= math.abs(a) + 1e-19
  end
  local function is_close_to_twenty(

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