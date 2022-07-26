-- Write a function count_nums which takes an array of integers and returns
-- the number of elements which has a sum of digits > 0.
-- If a number is negative, then its first signed digit will be negative:
-- e.g. -123 has signed digits -1, 2, and 3.
-- >>> count_nums([]) == 0
-- >>> count_nums([-1, 11, -11]) == 1
-- >>> count_nums([1, 1, 2]) == 3
local function count_nums(arr)
  local count = 0
  for _, v in ipairs(arr) do
    if v > 0 then
      local sum = 0
      while v > 0 do
        sum = sum + v % 10
        v = math.floor(v / 10)
      end
      if sum > 0 then
        count = count + 1
      end
    end
  end
  return count
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = count_nums
    lu.assertEquals(candidate({}), 0)
    lu.assertEquals(candidate({-1, -2, 0}), 0)
    lu.assertEquals(candidate({1, 1, 2, -2, 3, 4, 5}), 6)
    lu.assertEquals(candidate({1, 6, 9, -6, 0, 1, 5}), 5)
    lu.assertEquals(candidate({1, 100, 98, -7, 1, -1}), 4)
    lu.assertEquals(candidate({12, 23, 34, -45, -56, 0}), 5)
    lu.assertEquals(candidate({-0, 1}), 1)
    lu.assertEquals(candidate({1}), 1)
end

os.exit(lu.LuaUnit.run())