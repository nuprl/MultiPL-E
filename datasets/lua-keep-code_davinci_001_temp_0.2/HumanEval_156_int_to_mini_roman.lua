-- Given a positive integer, obtain its roman numeral equivalent as a string,
-- and return it in lowercase.
-- Restrictions: 1 <= num <= 1000
-- Examples:
-- >>> int_to_mini_roman(19) == 'xix'
-- >>> int_to_mini_roman(152) == 'clii'
-- >>> int_to_mini_roman(426) == 'cdxxvi'
local function int_to_mini_roman(number)
  local result = ''
  local digits = {1, 10, 100, 1000}
  local numerals = {'i', 'x', 'c', 'm'}
  for i = #digits, 1, -1 do
    local digit = digits[i]
    local numeral = numerals[i]
    local count = math.floor(number / digit)
    number = number % digit
    if count == 4 then
      result = result .. numeral .. numerals[i - 1]
    elseif count == 9 then
      result = result .. numerals[i - 2] .. numerals[i]
    elseif count >= 5 then
      result = result .. numerals[i - 1] .. string.rep(numeral, count - 5)
    else
      result = result .. string.rep(numeral, count)
    end
  end
  return result:lower()
end

lu = require('luaunit')

function test_humaneval()
local candidate = int_to_mini_roman
    lu.assertEquals(candidate(19), 'xix')
    lu.assertEquals(candidate(152), 'clii')
    lu.assertEquals(candidate(251), 'ccli')
    lu.assertEquals(candidate(426), 'cdxxvi')
    lu.assertEquals(candidate(500), 'd')
    lu.assertEquals(candidate(1), 'i')
    lu.assertEquals(candidate(4), 'iv')
    lu.assertEquals(candidate(43), 'xliii')
    lu.assertEquals(candidate(90), 'xc')
    lu.assertEquals(candidate(94), 'xciv')
    lu.assertEquals(candidate(532), 'dxxxii')
    lu.assertEquals(candidate(900), 'cm')
    lu.assertEquals(candidate(994), 'cmxciv')
    lu.assertEquals(candidate(1000), 'm')
end

os.exit(lu.LuaUnit.run())