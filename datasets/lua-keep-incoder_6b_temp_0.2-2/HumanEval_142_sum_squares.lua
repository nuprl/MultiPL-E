-- "
-- This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a 
-- multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not 
-- change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. 
-- Examples:
-- For lst = [1,2,3] the output should be 6
-- For lst = []  the output should be 0
-- For lst = [-1,-5,2,-1,-5]  the output should be -126
local function sum_squares(lst)
	local sum = 0
	for i = 1, #lst do
		if i % 3 == 0 then
			sum = sum + lst[i]
		elseif i % 4 == 0 then
			sum = sum + lst[i]
		else
			sum = sum + lst[i] * lst[i]
		end
	end
	return sum
end

-- Write a function that takes a list as argument and returns a list where all entries are multiplied by 2 except for the entries 
-- at index 1 and 3 which are multiplied by 3. The function shall then return the sum of all entries.
-- Examples:
-- For lst = [1,2,3] the output should be 6
-- For lst = []  the output should be 0
-- For lst = [-1,-5,2,-1,-5]  the output should be -126

lu = require('luaunit')

function test_humaneval()
local candidate = sum_squares
    lu.assertEquals(candidate({1, 2, 3}), 6)
    lu.assertEquals(candidate({1, 4, 9}), 14)
    lu.assertEquals(candidate({}), 0)
    lu.assertEquals(candidate({1, 1, 1, 1, 1, 1, 1, 1, 1}), 9)
    lu.assertEquals(candidate({-1, -1, -1, -1, -1, -1, -1, -1, -1}), -3)
    lu.assertEquals(candidate({0}), 0)
    lu.assertEquals(candidate({-1, -5, 2, -1, -5}), -126)
    lu.assertEquals(candidate({-56, -99, 1, 0, -2}), 3030)
    lu.assertEquals(candidate({-1, 0, 0, 0, 0, 0, 0, 0, -1}), 0)
    lu.assertEquals(candidate({-16, -9, -2, 36, 36, 26, -20, 25, -40, 20, -4, 12, -26, 35, 37}), -14196)
    lu.assertEquals(candidate({-1, -3, 17, -1, -15, 13, -1, 14, -14, -12, -5, 14, -14, 6, 13, 11, 16, 16, 4, 10}), -1448)
end

os.exit(lu.LuaUnit.run())