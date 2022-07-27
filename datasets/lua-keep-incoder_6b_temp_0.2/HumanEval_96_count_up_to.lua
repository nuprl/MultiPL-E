-- Implement a function that takes an non-negative integer and returns an array of the first n
-- integers that are prime numbers and less than n.
-- for example:
-- count_up_to(5) => [2,3]
-- count_up_to(11) => [2,3,5,7]
-- count_up_to(0) => []
-- count_up_to(20) => [2,3,5,7,11,13,17,19]
-- count_up_to(1) => []
-- count_up_to(18) => [2,3,5,7,11,13,17]
local function count_up_to(n)
  local primes = {}
  for i = 2, n do
    local prime = true
    for j = 2, #primes do
      if i % primes[j] == 0 then
        prime = false
        break
      end
    end
    if prime then
      table.insert(primes, i)
    end
  end
  return primes
end

-- Implement a function that takes an integer and returns an array of the integers from 1 to n
-- that are divisible by each number from 1 to n.
-- for example:
-- count_down_to(5) => [1,2,3]
-- count_down_to(11) => [1,2,5,7]
-- count_down_to(0) => []
-- count_down_to(20) => [1,2,5,7,11,13,17,19]
-- count_down_to(1) => []
-- count_down_to(18) => [1,2,5,7,11,13,17]

lu = require('luaunit')

function test_humaneval()
local candidate = count_up_to
    lu.assertEquals(candidate(5), {2, 3})
    lu.assertEquals(candidate(6), {2, 3, 5})
    lu.assertEquals(candidate(7), {2, 3, 5})
    lu.assertEquals(candidate(10), {2, 3, 5, 7})
    lu.assertEquals(candidate(0), {})
    lu.assertEquals(candidate(22), {2, 3, 5, 7, 11, 13, 17, 19})
    lu.assertEquals(candidate(1), {})
    lu.assertEquals(candidate(18), {2, 3, 5, 7, 11, 13, 17})
    lu.assertEquals(candidate(47), {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43})
    lu.assertEquals(candidate(101), {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97})
end

os.exit(lu.LuaUnit.run())