-- Given a positive integer, obtain its roman numeral equivalent as a string,
-- and return it in lowercase.
-- Restrictions: 1 <= num <= 1000
-- Examples:
-- >>> int_to_mini_roman(19) == 'xix'
-- >>> int_to_mini_roman(152) == 'clii'
-- >>> int_to_mini_roman(426) == 'cdxxvi'
local function int_to_mini_roman(number)
  -- Base case
  if number <= 0 then
    return nil
  end

  -- Recursive case
  local roman = int_to_mini_roman(number / 10)
  if roman ~= nil then
    roman = roman .. int_to_mini_roman(number % 10)
  end
  return roman
end

-- Given a positive integer, obtain its roman numeral equivalent as a string,
-- and return it in uppercase.
-- Restrictions: 1 <= num <= 1000
-- Examples:
-- >>> int_to_mini_roman(19) == 'XIX'
-- >>> int_to_mini_roman(152) == 'CLII'
-- >>> int_to_mini_roman(426) == 'CDXXVI'

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