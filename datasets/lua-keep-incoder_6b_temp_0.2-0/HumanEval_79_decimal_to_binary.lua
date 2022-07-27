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
    local decimal_power = math.pow(10, decimal)
    for i = 1, decimal do
        binary = binary .. "1"
    end
    binary = binary .. "0"
    for i = decimal + 2, decimal_power, -1 do
        binary = binary .. "0"
    end
    return binary
end

-- Problem #6
-- Write a function that will convert a binary number to a decimal number.
-- The function should take a string as input, and return an integer representing the number in decimal.
-- Examples:
-- binary_to_decimal("1111")   # returns 15
-- binary_to_decimal("100000") # returns 32

lu = require('luaunit')

function test_humaneval()
local candidate = decimal_to_binary
    lu.assertEquals(candidate(0), 'db0db')
    lu.assertEquals(candidate(32), 'db100000db')
    lu.assertEquals(candidate(103), 'db1100111db')
    lu.assertEquals(candidate(15), 'db1111db')
end

os.exit(lu.LuaUnit.run())