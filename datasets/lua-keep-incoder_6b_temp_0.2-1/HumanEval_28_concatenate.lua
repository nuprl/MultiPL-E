-- Concatenate list of strings into a single string
-- >>> concatenate([])
-- ''
-- >>> concatenate(['a', 'b', 'c'])
-- 'abc'
local function concatenate(strings)
  return table.concat(strings, "")
end


lu = require('luaunit')

function test_humaneval()
local candidate = concatenate
    lu.assertEquals(candidate({}), '')
    lu.assertEquals(candidate({'x', 'y', 'z'}), 'xyz')
    lu.assertEquals(candidate({'x', 'y', 'z', 'w', 'k'}), 'xyzwk')
end

os.exit(lu.LuaUnit.run())