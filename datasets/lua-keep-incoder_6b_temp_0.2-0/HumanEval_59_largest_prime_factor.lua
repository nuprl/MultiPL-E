-- Return the largest prime factor of n. Assume n > 1 and is not a prime.
-- >>> largest_prime_factor(13195)
-- 29
-- >>> largest_prime_factor(2048)
-- 2
local function largest_prime_factor(n)
  -- Base case
  if n < 2 then
    return nil
  end
  -- If n is prime, return it
  if prime_table[n] then
    return n
  end
  -- If n is divisible by 2, return it
  if n % 2 == 0 then
    return n
  end
  -- If n is divisible by 3, return its smallest factor
  if n % 3 == 0 then
    return smallest_prime_factor(n / 3)
  end
  -- If n is divisible by 5, return its smallest factor
  if n % 5 == 0 then
    return smallest_prime_factor(n / 5)
  end
  -- If n is divisible by both 3 and 5, return its smallest factor
  if n % 3 == 0 and n % 5 == 0 then
    return smallest_prime_factor(n / 3)
  end
  -- If n is divisible by 3 and 5, return its smallest factor
  if n % 3 == 0 and n % 5 == 1 then
    return smallest_prime_factor(n / 5)
  end
  -- If n is divisible by 3 and 5, return its smallest factor
  if n % 3 == 1 and n % 5 == 0 then
    return smallest_prime_factor(n / 3)
  end
  -- If n is divisible by 3 and 5, return its smallest factor
  if n % 3 == 1 and n % 5 == 1 then
    return smallest_prime_factor(n / 5)
  end
  -- If n is divisible by 3 and 5, return its smallest factor
  if n % 3 == 1 and n % 5 == 2 then
    return smallest_prime_factor(n / 5)
  end
  -- If n is divisible by 3 and 5, return its smallest factor
  if n % 3 == 2 and n % 5 == 0 then
    return smallest_prime_factor(n / 3)
  end
  -- If n is divisible by 3 and 5, return its smallest factor
  if n % 3 == 2 and n % 5 == 1 then
    return smallest_prime_factor(n / 5)
  end
  -- If n is divisible by 3 and 5, return its smallest factor
  if n % 3 == 2 and n % 5 == 2 then
    return smallest_prime_factor(n / 5)
  end
  -- If n is divisible by 3 and 5, return its smallest factor
  if n % 3 == 2 and n % 5 == 3 then
    return smallest_prime_factor(n / 5)
  end
  -- If n is divisible by 3 and 5, return its smallest factor
  if n % 3 == 3 and n % 5 == 0 then
    return smallest_prime_factor(n / 3)
  end
  -- If n is divisible by 3 and 5, return its smallest factor
  if n % 3 == 3 and n % 5

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