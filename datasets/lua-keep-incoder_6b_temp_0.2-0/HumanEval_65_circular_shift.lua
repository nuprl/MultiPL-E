-- Circular shift the digits of the integer x, shift the digits right by shift
-- and return the result as a string.
-- If shift > number of digits, return digits reversed.
-- >>> circular_shift(12, 1)
-- "21"
-- >>> circular_shift(12, 2)
-- "12"
local function circular_shift(x, shift)
  local digits = tostring(x).
    split('.')
  local digits_length = #digits
  local digits_reversed = {}
  local digits_shifted = {}
  local digits_shifted_length = 0
  local digits_shifted_reversed = {}
  for i = 1, digits_length do
    digits_shifted[digits_shifted_length] = digits[i]
    digits_shifted_length = digits_shifted_length + 1
    digits_shifted_reversed[digits_shifted_length] = digits_reversed[digits_length - i - 1]
  end
  local digits_shifted_reversed_length = digits_shifted_length - 1
  for i = 1, shift do
    digits_shifted[digits_shifted_length] = digits_shifted_reversed[digits_shifted_reversed_length]
    digits_shifted_length = digits_shifted_length + 1
    digits_shifted_reversed[digits_shifted_length] = digits_shifted[digits_shifted_length - 1]
    digits_shifted_reversed_length = digits_shifted_reversed_length - 1
  end
  local digits_shifted_reversed_length = digits_shifted_length - 1
  for i = 1, digits_length do
    digits_shifted[digits_shifted_length] = digits_shifted_reversed[digits_shifted_reversed_length]
    digits_shifted_length = digits_shifted_length + 1
    digits_shifted_reversed[digits_shifted_length] = digits_shifted[digits_shifted_length - 1]
    digits_shifted_reversed_length = digits_shifted_reversed_length - 1
  end
  local digits_shifted_reversed_length = digits_shifted_length - 1
  local digits_shifted_reversed = {}
  for i = 1, digits_length do
    digits_shifted_reversed[digits_shifted_reversed_length] = digits_shifted[digits_shifted_length - i - 1]
    digits_shifted_reversed_length = digits_shifted_reversed_length - 1
  end
  return table.concat(digits_shifted_reversed, '.')
end

-- >>> circular_shift_string(12)
-- "21"
-- >>> circular_shift_string(12)
-- "12"

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