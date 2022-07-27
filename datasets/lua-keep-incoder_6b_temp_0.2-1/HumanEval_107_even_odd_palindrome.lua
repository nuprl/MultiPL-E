-- Given a positive integer n, return a tuple that has the number of even and odd
-- integer palindromes that fall within the range(1, n), inclusive.
-- Example 1:
-- Input: 3
-- Output: (1, 2)
-- Explanation:
-- Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.
-- Example 2:
-- Input: 12
-- Output: (4, 6)
-- Explanation:
-- Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.
-- Note:
-- 1. 1 <= n <= 10^3
-- 2. returned tuple has the number of even and odd integer palindromes respectively.
local function even_odd_palindrome(n)
  -- base case
  if n < 1 then return nil end
  -- base case
  if n == 1 then return (1, 1) end
  -- base case
  if n == 2 then return (2, 1) end
  -- base case
  if n % 2 == 0 then return (even_odd_palindrome(n / 2), 1) end
  -- base case
  if n % 2 == 1 then return (even_odd_palindrome(n / 2), 2) end
  -- base case
  local even, odd = even_odd_palindrome(n / 2)
  -- recursive case
  return even, even + odd
end

-- Given a positive integer n, return a tuple that has the number of even and odd
-- integer palindromes that fall within the range(1, n), inclusive.
-- Example 1:
-- Input: 3
-- Output: (1, 2)
-- Explanation:
-- Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.
-- Example 2:
-- Input: 12
-- Output: (4, 6)
-- Explanation:
-- Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.
-- Note:
-- 1. 1 <= n <= 10^3
-- 2. returned tuple has the number of even and odd integer palindromes respectively.

lu = require('luaunit')

function test_humaneval()
local candidate = even_odd_palindrome
    lu.assertEquals(candidate(123), {8, 13})
    lu.assertEquals(candidate(12), {4, 6})
    lu.assertEquals(candidate(3), {1, 2})
    lu.assertEquals(candidate(63), {6, 8})
    lu.assertEquals(candidate(25), {5, 6})
    lu.assertEquals(candidate(19), {4, 6})
    lu.assertEquals(candidate(9), {4, 5})
    lu.assertEquals(candidate(1), {0, 1})
end

os.exit(lu.LuaUnit.run())