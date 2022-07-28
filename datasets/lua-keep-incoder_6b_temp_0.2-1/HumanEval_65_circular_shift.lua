-- Circular shift the digits of the integer x, shift the digits right by shift
-- and return the result as a string.
-- If shift > number of digits, return digits reversed.
-- >>> circular_shift(12, 1)
-- "21"
-- >>> circular_shift(12, 2)
-- "12"
local function circular_shift(x, shift)
  local digits = math.floor(math.log10(abs(x))) + shift
  local result = ""
  for i = 1, digits do
    local digit = math.floor(x * 10) % 10
    local digit2 = math.floor(x * 10 / 10) % 10
    local digit3 = math.floor(x * 10 / 100) % 10
    local digit4 = math.floor(x * 10 / 1000) % 10
    local digit5 = math.floor(x * 10 / 10000) % 10
    local digit6 = math.floor(x * 10 / 100000) % 10
    local digit7 = math.floor(x * 10 / 1000000) % 10
    local digit8 = math.floor(x * 10 / 10000000) % 10
    local digit9 = math.floor(x * 10 / 100000000) % 10
    local digit10 = math.floor(x * 10 / 1000000000) % 10
    local digit11 = math.floor(x * 10 / 10000000000) % 10
    local digit12 = math.floor(x * 10 / 100000000000) % 10
    local digit13 = math.floor(x * 10 / 1000000000000) % 10
    local digit14 = math.floor(x * 10 / 10000000000000) % 10
    local digit15 = math.floor(x * 10 / 100000000000000) % 10
    local digit16 = math.floor(x * 10 / 1000000000000000) % 10
    local digit17 = math.floor(x * 10 / 10000000000000000) % 10
    local digit18 = math.floor(x * 10 / 100000000000000000) % 10
    local digit19 = math.floor(x * 10 / 1000000000000000000) % 10
    local digit20 = math.floor(x * 10 / 10000000000000000000) % 10
    local digit21 = math.floor(x * 10 / 100000000000000000000) % 10
    local digit22 = math.floor(x * 10 / 1000000000000000000000) % 10
    local digit23 = math.floor(x * 10 / 10000000000000000000000) % 10
    local digit24 = math.floor(x * 10 / 100000000000000000000000) % 10
    local digit25 = math.floor(x * 10 / 1000000000000000000000000) % 10
    local digit26 = math.floor(x * 10 / 10000000000000000000000000) % 10
    local digit27 = math.floor(x * 10 / 100000000000000000000000000) % 10
    local digit28 = math.floor(x * 10 / 1000000000000000000000000000) % 10
    local digit29 = math.floor(x * 10 / 10000000000000000000000000000) % 10
    local digit30 = math.floor(x * 10 / 100000000000000000000000000000) % 10
    local digit31 = math.floor

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