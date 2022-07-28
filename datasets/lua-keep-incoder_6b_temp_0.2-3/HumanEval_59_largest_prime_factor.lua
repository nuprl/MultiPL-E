-- Return the largest prime factor of n. Assume n > 1 and is not a prime.
-- >>> largest_prime_factor(13195)
-- 29
-- >>> largest_prime_factor(2048)
-- 2
local function largest_prime_factor(n)
  -- Base case
  if n == 1 then
    return 1
  end
  -- If n is prime, return n
  if prime_table[n] then
    return n
  end
  -- If n is divisible by 2, return 2
  if n % 2 == 0 then
    return 2
  end
  -- If n is divisible by 3, return 3
  if n % 3 == 0 then
    return 3
  end
  -- If n is divisible by 5, return 5
  if n % 5 == 0 then
    return 5
  end
  -- If n is divisible by 7, return 7
  if n % 7 == 0 then
    return 7
  end
  -- If n is divisible by 11, return 11
  if n % 11 == 0 then
    return 11
  end
  -- If n is divisible by 13, return 13
  if n % 13 == 0 then
    return 13
  end
  -- If n is divisible by 17, return 17
  if n % 17 == 0 then
    return 17
  end
  -- If n is divisible by 19, return 19
  if n % 19 == 0 then
    return 19
  end
  -- If n is divisible by 23, return 23
  if n % 23 == 0 then
    return 23
  end
  -- If n is divisible by 29, return 29
  if n % 29 == 0 then
    return 29
  end
  -- If n is divisible by 31, return 31
  if n % 31 == 0 then
    return 31
  end
  -- If n is divisible by 37, return 37
  if n % 37 == 0 then
    return 37
  end
  -- If n is divisible by 41, return 41
  if n % 41 == 0 then
    return 41
  end
  -- If n is divisible by 43, return 43
  if n % 43 == 0 then
    return 43
  end
  -- If n is divisible by 47, return 47
  if n % 47 == 0 then
    return 47
  end
  -- If n is divisible by 53, return 53
  if n % 53 == 0 then
    return 53
  end
  -- If n is divisible by 59, return 59
  if n % 59 == 0 then
    return 59
  end
  -- If n is divisible by 61, return 61
  if n % 61 == 0 then
    return 61
  end
  -- If n is divisible by 67, return 67
  if n % 67 == 0 then
    return 67
  end
  -- If n is divisible by 71, return 71
  if n % 71 == 0 

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