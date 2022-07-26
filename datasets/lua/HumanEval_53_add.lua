-- Add two numbers x and y
-- >>> add(2, 3)
-- 5
-- >>> add(5, 7)
-- 12
local function add(x, y)
    return x + y
end

lu = require('luaunit')

function test_humaneval()
local candidate = add
    lu.assertEquals(candidate(0, 1), 1)
    lu.assertEquals(candidate(1, 0), 1)
    lu.assertEquals(candidate(2, 3), 5)
    lu.assertEquals(candidate(5, 7), 12)
    lu.assertEquals(candidate(7, 5), 12)
end

os.exit(lu.LuaUnit.run())