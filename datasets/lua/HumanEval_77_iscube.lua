-- Write a function that takes an integer a and returns True 
-- if this ingeger is a cube of some integer number.
-- Note: you may assume the input is always valid.
-- Examples:
-- iscube(1) ==> True
-- iscube(2) ==> False
-- iscube(-1) ==> True
-- iscube(64) ==> True
-- iscube(0) ==> True
-- iscube(180) ==> False
local function iscube(a)
  -- your code here
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = iscube
    lu.assertEquals(candidate(1), true)
    lu.assertEquals(candidate(2), false)
    lu.assertEquals(candidate(-1), true)
    lu.assertEquals(candidate(64), true)
    lu.assertEquals(candidate(180), false)
    lu.assertEquals(candidate(1000), true)
    lu.assertEquals(candidate(0), true)
    lu.assertEquals(candidate(1729), false)
end

os.exit(lu.LuaUnit.run())