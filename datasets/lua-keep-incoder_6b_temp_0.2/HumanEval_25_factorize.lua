-- Return list of prime factors of given integer in the order from smallest to largest.
-- Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
-- Input number should be equal to the product of all factors
-- >>> factorize(8)
-- [2, 2, 2]
-- >>> factorize(25)
-- [5, 5]
-- >>> factorize(70)
-- [2, 5, 7]
local function factorize(n)
    local factors = {}
    for i = 2, n do
        if n % i == 0 then
            table.insert(factors, i)
            n = n / i
        end
    end
    return factors
end

-- Returns list of prime factors of given integer in the order from smallest to largest.
-- Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
-- Input number should be equal to the product of all factors
-- >>> factorize(8)
-- [2, 2, 2]
-- >>> factorize(25)
-- [5, 5]
-- >>> factorize(70)
-- [2, 5, 7]

lu = require('luaunit')

function test_humaneval()
local candidate = factorize
    lu.assertEquals(candidate(2), {2})
    lu.assertEquals(candidate(4), {2, 2})
    lu.assertEquals(candidate(8), {2, 2, 2})
    lu.assertEquals(candidate(57), {3, 19})
    lu.assertEquals(candidate(3249), {3, 3, 19, 19})
    lu.assertEquals(candidate(185193), {3, 3, 3, 19, 19, 19})
    lu.assertEquals(candidate(20577), {3, 19, 19, 19})
    lu.assertEquals(candidate(18), {2, 3, 3})
end

os.exit(lu.LuaUnit.run())