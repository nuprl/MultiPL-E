-- Write a function vowels_count which takes a string representing
-- a word as input and returns the number of vowels in the string.
-- Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
-- vowel, but only when it is at the end of the given word.
-- Example:
-- >>> vowels_count("abcde")
-- 2
-- >>> vowels_count("ACEDY")
-- 3
local function vowels_count(s)
  local count = 0
  for i = 1, #s do
    if s:sub(i, i) == 'a' or s:sub(i, i) == 'e' or s:sub(i, i) == 'i' or s:sub(i, i) == 'o' or s:sub(i, i) == 'u' then
      count = count + 1
    end
  end
  return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = vowels_count
    lu.assertEquals(candidate('abcde'), 2)
    lu.assertEquals(candidate('Alone'), 3)
    lu.assertEquals(candidate('key'), 2)
    lu.assertEquals(candidate('bye'), 1)
    lu.assertEquals(candidate('keY'), 2)
    lu.assertEquals(candidate('bYe'), 1)
    lu.assertEquals(candidate('ACEDY'), 3)
end

os.exit(lu.LuaUnit.run())