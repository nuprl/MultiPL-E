-- Return true if a given number is prime, and false otherwise.
-- >>> is_prime(6)
-- False
-- >>> is_prime(101)
-- True
-- >>> is_prime(11)
-- True
-- >>> is_prime(13441)
-- True
-- >>> is_prime(61)
-- True
-- >>> is_prime(4)
-- False
-- >>> is_prime(1)
-- False
local function is_prime(n)
    if n == 1 then
        return false
    end
    for i = 2, n - 1 do
        if n % i == 0 then
            return false
        end
    end
    return true
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = is_prime
    lu.assertEquals(candidate(6), false)
    lu.assertEquals(candidate(101), true)
    lu.assertEquals(candidate(11), true)
    lu.assertEquals(candidate(13441), true)
    lu.assertEquals(candidate(61), true)
    lu.assertEquals(candidate(4), false)
    lu.assertEquals(candidate(1), false)
    lu.assertEquals(candidate(5), true)
    lu.assertEquals(candidate(11), true)
    lu.assertEquals(candidate(17), true)
    lu.assertEquals(candidate(85), false)
    lu.assertEquals(candidate(77), false)
    lu.assertEquals(candidate(255379), false)
end

os.exit(lu.LuaUnit.run())