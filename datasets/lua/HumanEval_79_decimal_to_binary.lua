-- You will be given a number in decimal form and your task is to convert it to
-- binary format. The function should return a string, with each character representing a binary
-- number. Each character in the string will be '0' or '1'.
-- There will be an extra couple of characters 'db' at the beginning and at the end of the string.
-- The extra characters are there to help with the format.
-- Examples:
-- decimal_to_binary(15)   # returns "db1111db"
-- decimal_to_binary(32)   # returns "db100000db"
local function decimal_to_binary(decimal)
  local binary = ""
  local i = 0
  while decimal > 0 do
    binary = string.char(decimal % 2 + string.byte('0')) .. binary
    decimal = math.floor(decimal / 2)
    i = i + 1
  end
  return "db" .. binary .. "db"
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = decimal_to_binary
    lu.assertEquals(candidate(0), 'db0db')
    lu.assertEquals(candidate(32), 'db100000db')
    lu.assertEquals(candidate(103), 'db1100111db')
    lu.assertEquals(candidate(15), 'db1111db')
end

os.exit(lu.LuaUnit.run())