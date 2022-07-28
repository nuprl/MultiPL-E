-- Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
-- the last couple centuries. However, what people don't know is Tribonacci sequence.
-- Tribonacci sequence is defined by the recurrence:
-- tri(1) = 3
-- tri(n) = 1 + n / 2, if n is even.
-- tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
-- For example:
-- tri(2) = 1 + (2 / 2) = 2
-- tri(4) = 3
-- tri(3) = tri(2) + tri(1) + tri(4)
-- = 2 + 3 + 3 = 8 
-- You are given a non-negative integer number n, you have to a return a list of the 
-- first n + 1 numbers of the Tribonacci sequence.
-- Examples:
-- tri(3) = [1, 3, 2, 8]
local function tri(n)
  if n == 1 then
    return [3]
  elseif n == 2 then
    return [1, 3]
  elseif n % 2 == 0 then
    return tri(n - 1) + tri(n - 2) + tri(n + 1)
  else
    return tri(n - 1) + tri(n - 2) + tri(n + 1) + tri(n - 3)
  end
end

-- Problem #4
-- The Fibonacci sequence is defined by the recurrence:
-- fib(1) = 1
-- fib(2) = 1
-- fib(k) = fib(k-1) + fib(k-2), where k is an integer from 0 to 30.
-- Hence the sequence begins with 1, 1, 2, 3 .. and so on, which is called the 
-- Fibonacci sequence. The next step is to generate all the numbers up to 
-- n by using the Fibonacci sequence. For example, fib(10) = 55. 
-- The next step is to generate all the numbers up to n by using the Fibonacci 
-- sequence. For example, fib(10) = 55. 
-- You are given a non-negative integer number n, you have to return the list 
-- of all the numbers up to n by using the Fibonacci sequence.
-- Examples:
-- fib(10) = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 
--            987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 
--            121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578]

lu = require('luaunit')

function test_humaneval()
local candidate = tri
    lu.assertEquals(candidate(3), {1, 3, 2, 8})
    lu.assertEquals(candidate(4), {1, 3, 2, 8, 3})
    lu.assertEquals(candidate(5), {1, 3, 2, 8, 3, 15})
    lu.assertEquals(candidate(6), {1, 3, 2, 8, 3, 15, 4})
    lu.assertEquals(candidate(7), {1, 3, 2, 8, 3, 15, 4, 24})
    lu.assertEquals(candidate(8), {1, 3, 2, 8, 3, 15, 4, 24, 5})
    lu.assertEquals(candidate(9), {1, 3, 2, 8, 3, 15, 4, 24, 5, 35})
    lu.assertEquals(candidate(20), {1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11})
    lu.assertEquals(candidate(0), {1})
    lu.assertEquals(candidate(1), {1, 3})
end

os.exit(lu.LuaUnit.run())