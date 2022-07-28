-- Given a positive integer, obtain its roman numeral equivalent as a string,
-- and return it in lowercase.
-- Restrictions: 1 <= num <= 1000
-- Examples:
-- >>> int_to_mini_roman(19) == 'xix'
-- >>> int_to_mini_roman(152) == 'clii'
-- >>> int_to_mini_roman(426) == 'cdxxvi'
local function int_to_mini_roman(number)
  -- Initialize result to empty string.
  local result = ""
  -- Iterate over all numbers from 1 to 1000.
  for i = 1, 1000 do
    -- If the number is divisible by 3...
    if number % 3 == 0 then
      -- Add 'i' to the result.
      result = result .. "i"
    -- If the number is divisible by 5...
    elseif number % 5 == 0 then
      -- Add 'ii' to the result.
      result = result .. "ii"
    -- If the number is divisible by both 3 and 5...
    elseif number % 3 == 0 and number % 5 == 0 then
      -- Add 'vi' to the result.
      result = result .. "vi"
    -- If the number is divisible by both 3 and 5...
    elseif number % 3 == 0 and number % 5 == 1 then
      -- Add 'vii' to the result.
      result = result .. "vii"
    -- If the number is divisible by both 3 and 5...
    elseif number % 3 == 1 and number % 5 == 0 then
      -- Add 'ix' to the result.
      result = result .. "ix"
    -- If the number is divisible by both 3 and 5...
    elseif number % 3 == 1 and number % 5 == 1 then
      -- Add 'ix' to the result.
      result = result .. "ix"
    -- If the number is divisible by both 3 and 5...
    elseif number % 5 == 1 and number % 3 == 0 then
      -- Add 'i' to the result.
      result = result .. "i"
    -- If the number is divisible by both 3 and 5...
    elseif number % 5 == 1 and number % 3 == 1 then
      -- Add 'ii' to the result.
      result = result .. "ii"
    -- If the number is divisible by both 3 and 5...
    elseif number % 5 == 1 and number % 3 == 2 then
      -- Add 'iii' to the result.
      result = result .. "iii"
    -- If the number is divisible by both 3 and 5...
    elseif number % 5 == 2 and number % 3 == 0 then
      -- Add 'v' to the result.
      result = result .. "v"
    -- If the number is divisible by both 3 and 5...
    elseif number % 5 == 2 and number % 3 == 1 then
      -- Add 'vi' to the result.
      result = result .. "vi"
    -- If the number is divisible by both 3 and 5...
    elseif number % 5 == 2 and number % 3 == 2 then
      -- Add 'vii' to the result.
      result = result .. "vii"
    -- 

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