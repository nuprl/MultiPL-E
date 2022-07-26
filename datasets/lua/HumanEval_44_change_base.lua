-- Change numerical base of input number x to base.
-- return string representation after the conversion.
-- base numbers are less than 10.
-- >>> change_base(8, 3)
-- '22'
-- >>> change_base(8, 2)
-- '1000'
-- >>> change_base(7, 2)
-- '111'
local function change_base(x, base)
  local result = ''
  while x > 0 do
    local remainder = x % base
    result = tostring(remainder) .. result
    x = (x - remainder) / base
  end
  return result
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = change_base
    lu.assertEquals(candidate(8, 3), '22')
    lu.assertEquals(candidate(9, 3), '100')
    lu.assertEquals(candidate(234, 2), '11101010')
    lu.assertEquals(candidate(16, 2), '10000')
    lu.assertEquals(candidate(8, 2), '1000')
    lu.assertEquals(candidate(7, 2), '111')
    lu.assertEquals(candidate(2, 3), '2')
    lu.assertEquals(candidate(3, 4), '3')
    lu.assertEquals(candidate(4, 5), '4')
    lu.assertEquals(candidate(5, 6), '5')
    lu.assertEquals(candidate(6, 7), '6')
    lu.assertEquals(candidate(7, 8), '7')
end

os.exit(lu.LuaUnit.run())