-- Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
-- should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
-- alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
-- Examples
-- split_words("Hello world!") ➞ ["Hello", "world!"]
-- split_words("Hello,world!") ➞ ["Hello", "world!"]
-- split_words("abcdef") == 3
local function split_words(txt)
  local words = txt:gmatch("[%w-]+")
  if words == nil then
    return txt:gsub("[%w-]+", ",")
  else
    return words
  end
end

-- Given a string, return a list of all words in the string with whitespace removed.
-- Examples
-- remove_words("Hello world!") ➞ ["Hello world!"]
-- remove_words("Hello,world!") ➞ ["Hello", "world!"]
-- remove_words("abcdef") == 3

lu = require('luaunit')

function test_humaneval()
local candidate = split_words
    lu.assertEquals(candidate('Hello world!'), {'Hello', 'world!'})
    lu.assertEquals(candidate('Hello,world!'), {'Hello', 'world!'})
    lu.assertEquals(candidate('Hello world,!'), {'Hello', 'world,!'})
    lu.assertEquals(candidate('Hello,Hello,world !'), {'Hello,Hello,world', '!'})
    lu.assertEquals(candidate('abcdef'), 3)
    lu.assertEquals(candidate('aaabb'), 2)
    lu.assertEquals(candidate('aaaBb'), 1)
    lu.assertEquals(candidate(''), 0)
end

os.exit(lu.LuaUnit.run())