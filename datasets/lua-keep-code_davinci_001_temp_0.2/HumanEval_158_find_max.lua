-- Write a function that accepts a list of strings.
-- The list contains different words. Return the word with maximum number
-- of unique characters. If multiple strings have maximum number of unique
-- characters, return the one which comes first in lexicographical order.
-- find_max(["name", "of", "string"]) == "string"
-- find_max(["name", "enam", "game"]) == "enam"
-- find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
local function find_max(words)
  local max_word = ""
  local max_len = 0
  for i, word in ipairs(words) do
    local len = 0
    for _ in word:gmatch(".") do
      len = len + 1
    end
    if len > max_len then
      max_len = len
      max_word = word
    end
  end
  return max_word
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_max
    lu.assertEquals(candidate({'name', 'of', 'string'}), 'string')
    lu.assertEquals(candidate({'name', 'enam', 'game'}), 'enam')
    lu.assertEquals(candidate({'aaaaaaa', 'bb', 'cc'}), 'aaaaaaa')
    lu.assertEquals(candidate({'abc', 'cba'}), 'abc')
    lu.assertEquals(candidate({'play', 'this', 'game', 'of', 'footbott'}), 'footbott')
    lu.assertEquals(candidate({'we', 'are', 'gonna', 'rock'}), 'gonna')
    lu.assertEquals(candidate({'we', 'are', 'a', 'mad', 'nation'}), 'nation')
    lu.assertEquals(candidate({'this', 'is', 'a', 'prrk'}), 'this')
    lu.assertEquals(candidate({'b'}), 'b')
    lu.assertEquals(candidate({'play', 'play', 'play'}), 'play')
end

os.exit(lu.LuaUnit.run())