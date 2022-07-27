-- Given a positive integer N, return the total sum of its digits in binary.
-- Example
-- For N = 1000, the sum of digits will be 1 the output should be "1".
-- For N = 150, the sum of digits will be 6 the output should be "110".
-- For N = 147, the sum of digits will be 12 the output should be "1100".
-- Variables:
-- @N integer
-- Constraints: 0 ≤ N ≤ 10000.
-- Output:
-- a string of binary number
local function solve(N)
    local sum = 0
    local result = ""
    for i = 1, N do
        sum = sum + math.floor((N % 10) * (math.pow(2, i)))
    end
    if sum > 0 then
        result = result .. math.floor(sum / 2)
    end
    return result
end

-- Return the number of ways to represent N using only two digits.
-- Variables:
-- @N integer
-- Constraints: 0 ≤ N ≤ 10000.
-- Output:
-- an integer

lu = require('luaunit')

function test_humaneval()
local candidate = solve
    lu.assertEquals(candidate(1000), '1')
    lu.assertEquals(candidate(150), '110')
    lu.assertEquals(candidate(147), '1100')
    lu.assertEquals(candidate(333), '1001')
    lu.assertEquals(candidate(963), '10010')
end

os.exit(lu.LuaUnit.run())