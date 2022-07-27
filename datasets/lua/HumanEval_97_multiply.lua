-- Complete the function that takes two integers and returns 
-- the product of their unit digits.
-- Assume the input is always valid.
-- Examples:
-- multiply(148, 412) should return 16.
-- multiply(19, 28) should return 72.
-- multiply(2020, 1851) should return 0.
-- multiply(14,-15) should return 20.
local function multiply(a, b)
  local result = 0
  local a_digits = tostring(a)
  local b_digits = tostring(b)
  local a_length = string.len(a_digits)
  local b_length = string.len(b_digits)
  for i = 1, a_length do
    local digit = string.sub(a_digits, i, i)
    local a_digit = tonumber(digit)
    for j = 1, b_length do
      local digit = string.sub(b_digits, j, j)
      local b_digit = tonumber(digit)
      result = result + (a_digit * b_digit)
    end
  end
  return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = multiply
    lu.assertEquals(candidate(148, 412), 16)
    lu.assertEquals(candidate(19, 28), 72)
    lu.assertEquals(candidate(2020, 1851), 0)
    lu.assertEquals(candidate(14, -15), 20)
    lu.assertEquals(candidate(76, 67), 42)
    lu.assertEquals(candidate(17, 27), 49)
    lu.assertEquals(candidate(0, 1), 0)
    lu.assertEquals(candidate(0, 0), 0)
end

os.exit(lu.LuaUnit.run())