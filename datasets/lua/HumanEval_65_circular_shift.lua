-- Circular shift the digits of the integer x, shift the digits right by shift
-- and return the result as a string.
-- If shift > number of digits, return digits reversed.
-- >>> circular_shift(12, 1)
-- "21"
-- >>> circular_shift(12, 2)
-- "12"
local function circular_shift(x, shift)
  local s = tostring(x)
  local n = #s
  if shift > n then
    return string.reverse(s)
  end
  local s1 = string.sub(s, shift+1, n)
  local s2 = string.sub(s, 1, shift)
  return s1 .. s2
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = circular_shift
    lu.assertEquals(candidate(100, 2), '001')
    lu.assertEquals(candidate(12, 2), '12')
    lu.assertEquals(candidate(97, 8), '79')
    lu.assertEquals(candidate(12, 1), '21')
    lu.assertEquals(candidate(11, 101), '11')
end

os.exit(lu.LuaUnit.run())