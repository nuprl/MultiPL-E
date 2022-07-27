-- Write a function that returns true if the given number is the multiplication of 3 prime numbers
-- and false otherwise.
-- Knowing that (a) is less then 100. 
-- Example:
-- is_multiply_prime(30) == True
-- 30 = 2 * 3 * 5
local function is_multiply_prime(a)
  -- Write your code here
  local is_multiply_prime = false
  if a <= 100 then
    local prime_numbers = {}
    local prime_numbers_count = 0
    for i = 2, a do
      local prime = true
      for j = 2, i do
        if i % j == 0 then
          prime = false
        end
      end
      if prime then
        table.insert(prime_numbers, i)
        prime_numbers_count = prime_numbers_count + 1
      end
    end
    if prime_numbers_count == 3 then
      is_multiply_prime = true
    end
  end
  return is_multiply_prime
end

-- Write a function that returns true if the given number is the multiplication of 5 prime numbers
-- and false otherwise.
-- Knowing that (a) is less then 100. 
-- Example:
-- is_multiply_prime(30) == True
-- 30 = 2 * 3 * 5 * 7

lu = require('luaunit')

function test_humaneval()
local candidate = is_multiply_prime
    lu.assertEquals(candidate(5), false)
    lu.assertEquals(candidate(30), true)
    lu.assertEquals(candidate(8), true)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(125), true)
    lu.assertEquals(candidate(105), true)
    lu.assertEquals(candidate(126), false)
    lu.assertEquals(candidate(729), false)
    lu.assertEquals(candidate(891), false)
    lu.assertEquals(candidate(1001), true)
end

os.exit(lu.LuaUnit.run())