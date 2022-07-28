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
  -- http://primes.utm.edu/lists/small/millions/
  -- http://primes.utm.edu/lists/small/millions/test.html
  -- http://primes.utm.edu/lists/small/millions/large/
  -- http://primes.utm.edu/lists/small/millions/large/test.html
  -- http://primes.utm.edu/lists/small/millions/medium/
  -- http://primes.utm.edu/lists/small/millions/medium/test.html
  -- http://primes.utm.edu/lists/small/millions/small/
  -- http://primes.utm.edu/lists/small/millions/small/test.html
  -- http://primes.utm.edu/lists/small/millions/medium/large/
  -- http://primes.utm.edu/lists/small/millions/medium/large/test.html
  -- http://primes.utm.edu/lists/small/millions/medium/small/
  -- http://primes.utm.edu/lists/small/millions/medium/small/test.html
  -- http://primes.utm.edu/lists/small/millions/large/medium/
  -- http://primes.utm.edu/lists/small/millions/large/medium/test.html
  -- http://primes.utm.edu/lists/small/millions/large/small/
  -- http://primes.utm.edu/lists/small/millions/large/small/test.html
  -- http://primes.utm.edu/lists/small/millions/medium/medium/
  -- http://primes.utm.edu/lists/small/millions/medium/medium/test.html
  -- http://primes.utm.edu/lists/small/millions/medium/small/large/
  -- http://primes.utm.edu/lists/small/millions/medium/small/large/test.html
  -- http://primes.utm.edu/lists/small/millions/medium/small/small/
  -- http://primes.utm.edu/lists/small/millions/medium/small/small/test.html
  -- http://primes.utm.edu/lists/small/millions/large/medium/large/
  -- http://primes.utm.edu/lists/small/millions/large/medium/large/test.html
  -- http://primes.utm.edu/lists/small/millions/large

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