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
    for i, v in ipairs(lst) do
        sum = sum + math.ceil(v)^2
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = sum_squares
    lu.assertEquals(candidate({1, 2, 3}), 14)
    lu.assertEquals(candidate({1.0, 2, 3}), 14)
    lu.assertEquals(candidate({1, 3, 5, 7}), 84)
    lu.assertEquals(candidate({1.4, 4.2, 0}), 29)
    lu.assertEquals(candidate({-2.4, 1, 1}), 6)
    lu.assertEquals(candidate({100, 1, 15, 2}), 10230)
    lu.assertEquals(candidate({10000, 10000}), 200000000)
    lu.assertEquals(candidate({-1.4, 4.6, 6.3}), 75)
    lu.assertEquals(candidate({-1.4, 17.9, 18.9, 19.9}), 1086)
    lu.assertEquals(candidate({0}), 0)
    lu.assertEquals(candidate({-1}), 1)
    lu.assertEquals(candidate({-1, 1, 0}), 2)
end

os.exit(lu.LuaUnit.run())