-- Return a string containing space-delimited numbers starting from 0 upto n inclusive.
-- >>> string_sequence(0)
-- '0'
-- >>> string_sequence(5)
-- '0 1 2 3 4 5'
local function string_sequence(n)
  local str = ''
  for i = 1, n do
    str = str .. ' ' .. i
  end
  return str
end


lu = require('luaunit')

function test_humaneval()
local candidate = string_sequence
    lu.assertEquals(candidate(0), '0')
    lu.assertEquals(candidate(3), '0 1 2 3')
    lu.assertEquals(candidate(10), '0 1 2 3 4 5 6 7 8 9 10')
end

os.exit(lu.LuaUnit.run())