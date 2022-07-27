-- Return the largest prime factor of n. Assume n > 1 and is not a prime.
-- >>> largest_prime_factor(13195)
-- 29
-- >>> largest_prime_factor(2048)
-- 2
local function largest_prime_factor(n)
  -- Base case
  if n < 2 then return 1 end
  -- If n is even, return its largest factor of 2
  if n % 2 == 0 then return 2 end
  -- If n is odd, return its largest factor of 3
  if n % 2 == 1 then return 3 end
  -- Otherwise, loop through all odd numbers up to sqrt(n)
  for i = 5, math.sqrt(n), 2 do
    -- If n is divisible by i, return i
    if n % i == 0 then return i end
  end
end

-- Return the smallest prime factor of n. Assume n > 1 and is not a prime.
-- >>> smallest_prime_factor(13195)
-- 5
-- >>> smallest_prime_factor(2048)
-- 2

lu = require('luaunit')

function test_humaneval()
local candidate = largest_prime_factor
    lu.assertEquals(candidate(15), 5)
    lu.assertEquals(candidate(27), 3)
    lu.assertEquals(candidate(63), 7)
    lu.assertEquals(candidate(330), 11)
    lu.assertEquals(candidate(13195), 29)
end

os.exit(lu.LuaUnit.run())