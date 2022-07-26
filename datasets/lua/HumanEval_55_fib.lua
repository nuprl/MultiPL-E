-- Return n-th Fibonacci number.
-- >>> fib(10)
-- 55
-- >>> fib(1)
-- 1
-- >>> fib(8)
-- 21
local function fib(n)
    if n < 2 then
        return n
    else
        return fib(n - 1) + fib(n - 2)
    end
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = fib
    lu.assertEquals(candidate(10), 55)
    lu.assertEquals(candidate(1), 1)
    lu.assertEquals(candidate(8), 21)
    lu.assertEquals(candidate(11), 89)
    lu.assertEquals(candidate(12), 144)
end

os.exit(lu.LuaUnit.run())