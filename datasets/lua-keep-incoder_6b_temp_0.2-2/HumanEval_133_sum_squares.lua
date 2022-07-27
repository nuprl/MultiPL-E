-- You are given a list of numbers.
-- You need to return the sum of squared numbers in the given list,
-- round each element in the list to the upper int(Ceiling) first.
-- Examples:
-- For lst = [1,2,3] the output should be 14
-- For lst = [1,4,9] the output should be 98
-- For lst = [1,3,5,7] the output should be 84
-- For lst = [1.4,4.2,0] the output should be 29
-- For lst = [-2.4,1,1] the output should be 6
local function sum_squares(lst)
  local sum = 0
  for i = 1, #lst do
    sum = sum + math.pow(lst[i], 2)
  end
  return math.ceil(sum)
end

-- Write a function that takes a list as an argument and returns a list where each element is the sum of the squares of the previous two elements.
-- Examples:
-- For lst = [1,2,3] the output should be [1,9,25]
-- For lst = [1,4,9] the output should be [16,49,81]
-- For lst = [1,3,5,7] the output should be [1,22,43,71]
-- For lst = [1.4,4.2,0] the output should be [4.4,9.2,16.0]
-- For lst = [-2.4,1,1] the output should be [-3.4,-7.4,-11.4]

lu = require('luaunit')

function test_humaneval()
local candidate = sum_squares
    lu.assertEquals(candidate({1.0, 2.0, 3.0}), 14)
    lu.assertEquals(candidate({1.0, 2.0, 3.0}), 14)
    lu.assertEquals(candidate({1.0, 3.0, 5.0, 7.0}), 84)
    lu.assertEquals(candidate({1.4, 4.2, 0.0}), 29)
    lu.assertEquals(candidate({-2.4, 1.0, 1.0}), 6)
    lu.assertEquals(candidate({100.0, 1.0, 15.0, 2.0}), 10230)
    lu.assertEquals(candidate({10000.0, 10000.0}), 200000000)
    lu.assertEquals(candidate({-1.4, 4.6, 6.3}), 75)
    lu.assertEquals(candidate({-1.4, 17.9, 18.9, 19.9}), 1086)
    lu.assertEquals(candidate({0.0}), 0)
    lu.assertEquals(candidate({-1.0}), 1)
    lu.assertEquals(candidate({-1.0, 1.0, 0.0}), 2)
end

os.exit(lu.LuaUnit.run())