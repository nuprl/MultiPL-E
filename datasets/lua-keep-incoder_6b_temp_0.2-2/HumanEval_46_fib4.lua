-- The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
-- fib4(0) -> 0
-- fib4(1) -> 0
-- fib4(2) -> 2
-- fib4(3) -> 0
-- fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
-- Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
-- >>> fib4(5)
-- 4
-- >>> fib4(6)
-- 8
-- >>> fib4(7)
-- 14
local function fib4(n)
  if n < 0 then
    return 0
  elseif n < 4 then
    return n
  else
    return fib4(n - 1) + fib4(n - 2) + fib4(n - 3) + fib4(n - 4)
  end
end

-- The Fibonacci sequence is a sequence of numbers, starting with 0 and 1, that repeatedly adds up the previous two numbers. 
-- For example, fibonacci(0) is 0, fibonacci(1) is 1, fibonacci(2) is 1, fibonacci(3) is 2, fibonacci(4) is 3, and so on. 
-- The Fibonacci sequence is commonly used to describe the mathematical concept of a Fibonacci number. 
-- The Fibonacci sequence is defined by the recurrence relation:
-- fib(n) = fib(n-1) + fib(n-2), where fib(0) = 0, fib(1) = 1, and fib(2) = 1.
-- Please write a function to efficiently compute the n-th element of the Fibonacci sequence.  Do not use recursion.
-- >>> fib(5)
-- 5
-- >>> fib(6)
-- 8
-- >>> fib(7)
-- 13

lu = require('luaunit')

function test_humaneval()
local candidate = fib4
    lu.assertEquals(candidate(5), 4)
    lu.assertEquals(candidate(8), 28)
    lu.assertEquals(candidate(10), 104)
    lu.assertEquals(candidate(12), 386)
end

os.exit(lu.LuaUnit.run())