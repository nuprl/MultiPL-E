-- Input are two strings a and b consisting only of 1s and 0s.
-- Perform binary XOR on these inputs and return result also as a string.
-- >>> string_xor('010', '110')
-- '100'
local function string_xor(a, b)
  local result = ''
  for i = 1, #a do
    local x = a:sub(i, i)
    local y = b:sub(i, i)
    if x == y then
      result = result .. '0'
    else
      result = result .. '1'
    end
  end
  return result
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = string_xor
    lu.assertEquals(candidate('111000', '101010'), '010010')
    lu.assertEquals(candidate('1', '1'), '0')
    lu.assertEquals(candidate('0101', '0000'), '0101')
end

os.exit(lu.LuaUnit.run())