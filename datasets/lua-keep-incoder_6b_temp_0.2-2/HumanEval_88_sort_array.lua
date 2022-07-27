-- Given an array of non-negative integers, return a copy of the given array after sorting,
-- you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
-- or sort it in descending order if the sum( first index value, last index value) is even.
-- Note:
-- * don't change the given array.
-- Examples:
-- * sort_array([]) => []
-- * sort_array([5]) => [5]
-- * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
-- * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
local function sort_array(array)
  local sum = 0
  local result
  for i = 1, #array do
    sum = sum + array[i]
  end
  if sum % 2 == 1 then
    result = table.remove(array, 1, #array - 1)
  else
    result = table.remove(array, #array - 1, #array)
  end
  return result
end

-- Given an array of non-negative integers, return a copy of the given array after sorting,
-- you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
-- or sort it in descending order if the sum( first index value, last index value) is even.
-- Note:
-- * don't change the given array.
-- Examples:
-- * sort_array([]) => []
-- * sort_array([5]) => [5]
-- * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
-- * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]

lu = require('luaunit')

function test_humaneval()
local candidate = sort_array
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({5}), {5})
    lu.assertEquals(candidate({2, 4, 3, 0, 1, 5}), {0, 1, 2, 3, 4, 5})
    lu.assertEquals(candidate({2, 4, 3, 0, 1, 5, 6}), {6, 5, 4, 3, 2, 1, 0})
    lu.assertEquals(candidate({2, 1}), {1, 2})
    lu.assertEquals(candidate({15, 42, 87, 32, 11, 0}), {0, 11, 15, 32, 42, 87})
    lu.assertEquals(candidate({21, 14, 23, 11}), {23, 21, 14, 11})
end

os.exit(lu.LuaUnit.run())