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
  if n < 2 then
    return false
  end
  if n == 2 then
    return true
  end
  if n % 2 == 0 then
    return false
  end
  -- Test if n is evenly divisible by 3
  if n % 3 == 0 then
    return false
  end
  -- Test if n is evenly divisible by 5
  if n % 5 == 0 then
    return false
  end
  -- Test if n is evenly divisible by 7
  if n % 7 == 0 then
    return false
  end
  -- Test if n is evenly divisible by 11
  if n % 11 == 0 then
    return false
  end
  -- If n is evenly divisible by 13, then it must be divisible by 17
  if n % 17 == 0 then
    return false
  end
  -- If n is evenly divisible by 19, then it must be divisible by 23
  if n % 23 == 0 then
    return false
  end
  -- If n is evenly divisible by 29, then it must be divisible by 31
  if n % 31 == 0 then
    return false
  end
  -- If n is evenly divisible by 31, then it must be divisible by 37
  if n % 37 == 0 then
    return false
  end
  -- If n is evenly divisible by 43, then it must be divisible by 47
  if n % 47 == 0 then
    return false
  end
  -- If n is evenly divisible by 53, then it must be divisible by 59
  if n % 59 == 0 then
    return false
  end
  -- If n is evenly divisible by 61, then it must be divisible by 67
  if n % 67 == 0 then
    return false
  end
  -- If n is evenly divisible by 71, then it must be divisible by 79
  if n % 79 == 0 then
    return false
  end
  -- If n is evenly divisible by 83, then it must be divisible by 89
  if n % 89 == 0 then
    return false
  end
  -- If n is evenly divisible by 97, then it must be divisible by 101
  if n % 101 == 0 then
    return false
  end
  -- If n is evenly divisible by 103, then it must be divisible by 103
  if n % 103 == 0 then
    return false
  end
  -- If n is evenly divisible by 107, then it must be divisible by 107
  if n % 107 == 0 then
    return false
  end
  -- If 

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