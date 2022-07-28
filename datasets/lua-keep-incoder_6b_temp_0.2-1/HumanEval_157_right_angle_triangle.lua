-- Given the lengths of the three sides of a triangle. Return True if the three
-- sides form a right-angled triangle, False otherwise.
-- A right-angled triangle is a triangle in which one angle is right angle or 
-- 90 degree.
-- Example:
-- right_angle_triangle(3, 4, 5) == True
-- right_angle_triangle(1, 2, 3) == False
local function right_angle_triangle(a, b, c)
	-- Check that the sides are all positive
	if a < 0 or b < 0 or c < 0 then
		return false
	end
	-- Check that the sides are equal
	if a == b and a == c then
		return true
	end
	-- Check that the sides are equal
	if a == c then
		return true
	end
	-- Check that the sides are equal
	if b == c then
		return true
	end
	-- Check that the sides are equal
	if a == b or a == c or b == c then
		return true
	end
	-- Check that the sides are equal
	if a == b or a == c or b == c then
		return true
	end
	-- Check that the sides are equal
	if a == b or a == c or b == c then
		return true
	end
	-- Check that the sides are equal
	if a == b or a == c or b == c then
		return true
	end
	-- Check that the sides are equal
	if a == b or a == c or b == c then
		return true
	end
	-- Check that the sides are equal
	if a == b or a == c or b == c then
		return true
	end
	-- Check that the sides are equal
	if a == b or a == c or b == c then
		return true
	end
	-- Check that the sides are equal
	if a == b or a == c or b == c then
		return true
	end
	-- Check that the sides are equal
	if a == b or a == c or b == c then
		return true
	end
	-- Check that the sides are equal
	if a == b or a == c or b == c then
		return true
	end
	-- Check that the sides are equal
	if a == b or a == c or b == c then
		return true
	end
	-- Check that the sides are equal
	if a == b or a == c or b == c then
		return true
	end
	-- Check that the sides are equal
	if a == b or a == c or b == c then
		return true
	end
	-- Check that the sides are equal
	if a == b or a == c or b == c then
		return true
	end
	-- Check that the sides are equal
	if a == b or a == c or b == c then
		return true
	end
	-- Check that the sides are equal
	if a == b or a == c or b == c then
		return true
	end
	-- Check that the sides are equal


lu = require('luaunit')

function test_humaneval()
local candidate = right_angle_triangle
    lu.assertEquals(candidate(3, 4, 5), true)
    lu.assertEquals(candidate(1, 2, 3), false)
    lu.assertEquals(candidate(10, 6, 8), true)
    lu.assertEquals(candidate(2, 2, 2), false)
    lu.assertEquals(candidate(7, 24, 25), true)
    lu.assertEquals(candidate(10, 5, 7), false)
    lu.assertEquals(candidate(5, 12, 13), true)
    lu.assertEquals(candidate(15, 8, 17), true)
    lu.assertEquals(candidate(48, 55, 73), true)
    lu.assertEquals(candidate(1, 1, 1), false)
    lu.assertEquals(candidate(2, 2, 10), false)
end

os.exit(lu.LuaUnit.run())