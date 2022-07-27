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
  local vowels = {'a', 'e', 'i', 'o', 'u'}
  local vowel_count = 0
  for i = 1, #s do
    if vowels[string.sub(s,i,i)] then
      vowel_count = vowel_count + 1
    end
  end
  return vowel_count
end

-- Write a function count_vowels which takes a string representing
-- a word as input and returns the number of vowels in the string.
-- Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
-- vowel, but only when it is at the end of the given word.
-- Example:
-- >>> count_vowels("abcde")
-- 2
-- >>> count_vowels("ACEDY")
-- 3

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