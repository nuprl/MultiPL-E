-- Return 2^n modulo p (be aware of numerics).
-- >>> modp(3, 5)
-- 3
-- >>> modp(1101, 101)
-- 2
-- >>> modp(0, 101)
-- 1
-- >>> modp(3, 11)
-- 8
-- >>> modp(100, 101)
-- 1
local function modp(n, p)
  if p == 0 then return 1 end
  if p == 1 then return n end
  local q = modp(n / p, p)
  if n % p == 0 then
    return q * p + q
  else
    return q
  end
end


lu = require('luaunit')

function test_humaneval()
local candidate = modp
    lu.assertEquals(candidate(3, 5), 3)
    lu.assertEquals(candidate(1101, 101), 2)
    lu.assertEquals(candidate(0, 101), 1)
    lu.assertEquals(candidate(3, 11), 8)
    lu.assertEquals(candidate(100, 101), 1)
    lu.assertEquals(candidate(30, 5), 4)
    lu.assertEquals(candidate(31, 5), 3)
end

os.exit(lu.LuaUnit.run())