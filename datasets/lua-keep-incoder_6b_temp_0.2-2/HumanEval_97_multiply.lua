-- Complete the function that takes two integers and returns 
-- the product of their unit digits.
-- Assume the input is always valid.
-- Examples:
-- multiply(148, 412) should return 16.
-- multiply(19, 28) should return 72.
-- multiply(2020, 1851) should return 0.
-- multiply(14,-15) should return 20.
local function multiply(a, b)
	-- Write your code here
	local product = 0
	
	local aDigits = a:toString():reverse()
	local bDigits = b:toString():reverse()
	
	for i = 1, #aDigits do
		product = product + (aDigits[i] * bDigits[i])
	end
	
	return product
end

-- Problem #4
-- Complete the function below that takes an integer and returns the 
-- sum of the digits of that integer.
-- Examples:
-- sumDigits(12) should return 1 + 2 = 3.
-- sumDigits(14) should return 1 + 4 = 5.
-- sumDigits(19) should return 1 + 9 = 10.
-- sumDigits(2020) should return 1 + 0 = 1.
-- sumDigits(-2020) should return -1 + 0 = -1.

lu = require('luaunit')

function test_humaneval()
local candidate = multiply
    lu.assertEquals(candidate(148, 412), 16)
    lu.assertEquals(candidate(19, 28), 72)
    lu.assertEquals(candidate(2020, 1851), 0)
    lu.assertEquals(candidate(14, -15), 20)
    lu.assertEquals(candidate(76, 67), 42)
    lu.assertEquals(candidate(17, 27), 49)
    lu.assertEquals(candidate(0, 1), 0)
    lu.assertEquals(candidate(0, 0), 0)
end

os.exit(lu.LuaUnit.run())