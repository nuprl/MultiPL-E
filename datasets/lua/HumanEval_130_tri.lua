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
  local t = {}
  for i = 1, n + 1 do
    if i == 1 then
      t[i] = 3
    elseif i == 2 then
      t[i] = 1
    elseif i % 2 == 0 then
      t[i] = t[i - 1] + (i / 2)
    else
      t[i] = t[i - 1] + t[i - 2] + t[i - 3]
    end
  end
  return t
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = tri
    lu.assertEquals(candidate(3), {1, 3, 2.0, 8.0})
    lu.assertEquals(candidate(4), {1, 3, 2.0, 8.0, 3.0})
    lu.assertEquals(candidate(5), {1, 3, 2.0, 8.0, 3.0, 15.0})
    lu.assertEquals(candidate(6), {1, 3, 2.0, 8.0, 3.0, 15.0, 4.0})
    lu.assertEquals(candidate(7), {1, 3, 2.0, 8.0, 3.0, 15.0, 4.0, 24.0})
    lu.assertEquals(candidate(8), {1, 3, 2.0, 8.0, 3.0, 15.0, 4.0, 24.0, 5.0})
    lu.assertEquals(candidate(9), {1, 3, 2.0, 8.0, 3.0, 15.0, 4.0, 24.0, 5.0, 35.0})
    lu.assertEquals(candidate(20), {1, 3, 2.0, 8.0, 3.0, 15.0, 4.0, 24.0, 5.0, 35.0, 6.0, 48.0, 7.0, 63.0, 8.0, 80.0, 9.0, 99.0, 10.0, 120.0, 11.0})
    lu.assertEquals(candidate(0), {1})
    lu.assertEquals(candidate(1), {1, 3})
end

os.exit(lu.LuaUnit.run())