-- Given length of a side and high return area for a triangle.
-- >>> triangle_area(5, 3)
-- 7.5
local function triangle_area(a, h)
  return 0.5 * a * h
end

lu = require('luaunit')

function test_humaneval()
local candidate = triangle_area
    lu.assertEquals(candidate(5, 3), 7.5)
    lu.assertEquals(candidate(2, 2), 2.0)
    lu.assertEquals(candidate(10, 8), 40.0)
end

os.exit(lu.LuaUnit.run())