-- Given the lengths of the three sides of a triangle. Return the area of
-- the triangle rounded to 2 decimal points if the three sides form a valid triangle. 
-- Otherwise return -1
-- Three sides make a valid triangle when the sum of any two sides is greater 
-- than the third side.
-- Example:
-- triangle_area(3, 4, 5) == 6.00
-- triangle_area(1, 2, 10) == -1
local function triangle_area(a, b, c)
  if a + b <= c or a + c <= b or b + c <= a then
    return -1
  end
  return math.floor((a + b + c) / 2 * math.sqrt(a * b * c)) / 100
end

lu = require('luaunit')

function test_humaneval()
local candidate = triangle_area
    lu.assertEquals(candidate(3, 4, 5), 6.0)
    lu.assertEquals(candidate(1, 2, 10), -1)
    lu.assertEquals(candidate(4, 8, 5), 8.18)
    lu.assertEquals(candidate(2, 2, 2), 1.73)
    lu.assertEquals(candidate(1, 2, 3), -1)
    lu.assertEquals(candidate(10, 5, 7), 16.25)
    lu.assertEquals(candidate(2, 6, 3), -1)
    lu.assertEquals(candidate(1, 1, 1), 0.43)
    lu.assertEquals(candidate(2, 2, 10), -1)
end

os.exit(lu.LuaUnit.run())