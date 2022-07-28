-- Return length of given string
-- >>> strlen('')
-- 0
-- >>> strlen('abc')
-- 3
local function strlen(string)
  return string.len() -- Lua 5.1
  or string.gsub(string, '^%s*', '')
  or string.gsub(string, '%s+', '')
  or 0
end


lu = require('luaunit')

function test_humaneval()
local candidate = strlen
    lu.assertEquals(candidate(''), 0)
    lu.assertEquals(candidate('x'), 1)
    lu.assertEquals(candidate('asdasnakj'), 9)
end

os.exit(lu.LuaUnit.run())