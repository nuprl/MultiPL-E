-- In this Kata, you have to sort an array of non-negative integers according to
-- number of ones in their binary representation in ascending order.
-- For similar number of ones, sort based on decimal value.
-- It must be implemented like this:
-- >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
-- >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
-- >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
local function sort_array(arr)
  local function compare(lhs, rhs)
    if lhs < rhs then
      return -1
    elseif lhs > rhs then
      return 1
    else
      return 0
    end
  end
  table.sort(arr, compare)
  return arr
end


lu = require('luaunit')

function test_humaneval()
local candidate = sort_array
    lu.assertEquals(candidate({1, 5, 2, 3, 4}), {1, 2, 4, 3, 5})
    lu.assertEquals(candidate({-2, -3, -4, -5, -6}), {-4, -2, -6, -5, -3})
    lu.assertEquals(candidate({1, 0, 2, 3, 4}), {0, 1, 2, 4, 3})
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4}), {2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77})
    lu.assertEquals(candidate({3, 6, 44, 12, 32, 5}), {32, 3, 5, 6, 12, 44})
    lu.assertEquals(candidate({2, 4, 8, 16, 32}), {2, 4, 8, 16, 32})
    lu.assertEquals(candidate({2, 4, 8, 16, 32}), {2, 4, 8, 16, 32})
end

os.exit(lu.LuaUnit.run())