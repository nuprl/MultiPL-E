-- Complete the function that takes two integers and returns 
-- the product of their unit digits.
-- Assume the input is always valid.
-- Examples:
-- multiply(148, 412) should return 16.
-- multiply(19, 28) should return 72.
-- multiply(2020, 1851) should return 0.
-- multiply(14,-15) should return 20.
local function multiply(a, b)
	local product = 0
	
	-- If the first number is negative, multiply it by -1
	if a < 0 then
		a = -a
		product = -1
	end
	
	-- If the second number is negative, multiply it by -1
	if b < 0 then
		b = -b
		product = -1
	end
	
	-- If the first number is 0, return 0
	if a == 0 then
		return 0
	end
	
	-- If the second number is 0, return 0
	if b == 0 then
		return 0
	end
	
	-- If the first number is 1, return 1
	if a == 1 then
		return 1
	end
	
	-- If the second number is 1, return 1
	if b == 1 then
		return 1
	end
	
	-- If the first number is 10, return 10
	if a == 10 then
		return 10
	end
	
	-- If the second number is 10, return 10
	if b == 10 then
		return 10
	end
	
	-- If the first number is 100, return 100
	if a == 100 then
		return 100
	end
	
	-- If the second number is 100, return 100
	if b == 100 then
		return 100
	end
	
	-- If the first number is 1000, return 1000
	if a == 1000 then
		return 1000
	end
	
	-- If the second number is 1000, return 1000
	if b == 1000 then
		return 1000
	end
	
	-- If the first number is 10000, return 10000
	if a == 10000 then
		return 10000
	end
	
	-- If the second number is 10000, return 10000
	if b == 10000 then
		return 10000
	end
	
	-- If the first number is 100000, return 100000
	if a == 100000 then
		return 100000
	end
	
	-- If the second number is 100000, return 100000
	if b == 100000 then
		return 100000
	end
	
	-- If the first number is 1000000, return 1000000
	if a == 1000000 then
		return 1000000
	end
	
	-- If the second number is 1000000, return 1000000
	if b == 1000000 then
		return 1000000
	end
	
	-- If the first number is 10000000, return 10000000
	if a == 10000000 then
		return 10000000
	end
	
	-- If the second number is 10000000, return 10000000
	if b == 10000000 then
		return 10000000
	end
	
	-- If the first number is 100000000, return 100000000
	if a == 100000000 then

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