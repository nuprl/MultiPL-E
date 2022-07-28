-- Given a string s and a natural number n, you have been tasked to implement 
-- a function that returns a list of all words from string s that contain exactly 
-- n consonants, in order these words appear in the string s.
-- If the string s is empty then the function should return an empty list.
-- Note: you may assume the input string contains only letters and spaces.
-- Examples:
-- select_words("Mary had a little lamb", 4) ==> ["little"]
-- select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
-- select_words("simple white space", 2) ==> []
-- select_words("Hello world", 4) ==> ["world"]
-- select_words("Uncle sam", 3) ==> ["Uncle"]
local function select_words(s, n)
  -- Your code here
end

-- Problem #6: Given a string s and a natural number n, you have been tasked to implement 
-- a function that returns a list of all words from string s that contain exactly 
-- n vowels, in order these words appear in the string s.
-- If the string s is empty then the function should return an empty list.
-- Note: you may assume the input string contains only letters and spaces.
-- Examples:
-- select_words("Mary had a little lamb", 4) ==> ["little", "lamb"]
-- select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
-- select_words("simple white space", 2) ==> []
-- select_words("Hello world", 4) ==> ["world"]
-- select_words("Uncle sam", 3) ==> ["Uncle"]

lu = require('luaunit')

function test_humaneval()
local candidate = select_words
    lu.assertEquals(candidate('Mary had a little lamb', 4), {'little'})
    lu.assertEquals(candidate('Mary had a little lamb', 3), {'Mary', 'lamb'})
    lu.assertEquals(candidate('simple white space', 2), {})
    lu.assertEquals(candidate('Hello world', 4), {'world'})
    lu.assertEquals(candidate('Uncle sam', 3), {'Uncle'})
    lu.assertEquals(candidate('', 4), {})
    lu.assertEquals(candidate('a b c d e f', 1), {'b', 'c', 'd', 'f'})
end

os.exit(lu.LuaUnit.run())