-- Write a function that takes a string and returns an ordered version of it.
-- Ordered version of string, is a string where all words (separated by space)
-- are replaced by a new word where all the characters arranged in
-- ascending order based on ascii value.
-- Note: You should keep the order of words and blank spaces in the sentence.
-- For example:
-- anti_shuffle('Hi') returns 'Hi'
-- anti_shuffle('hello') returns 'ehllo'
-- anti_shuffle('Hello World!!!') returns 'Hello !!!Wdlor'
local function anti_shuffle(s)
  -- Write your solution here
  local words = string.gmatch(s, '%w+')
  local new_words = {}
  for i = 1, #words do
    local word = words[i]
    local new_word = ''
    for j = 1, #word do
      local c = string.byte(word[j])
      if c < 128 then
        new_word = new_word .. string.char(c + (128 - c))
      else
        new_word = new_word .. string.char(c - 128)
      end
    end
    new_words[#new_words + 1] = new_word
  end
  return table.concat(new_words, '')
end

-- Write a function that takes a string and returns an ordered version of it.
-- Ordered version of string, is a string where all words (separated by space)
-- are replaced by a new word where all the characters arranged in
-- descending order based on ascii value.
-- Note: You should keep the order of words and blank spaces in the sentence.
-- For example:
-- anti_shuffle('Hi') returns 'Hi'
-- anti_shuffle('hello') returns 'olleh'
-- anti_shuffle('Hello World!!!') returns 'Hello World!!!'

lu = require('luaunit')

function test_humaneval()
local candidate = anti_shuffle
    lu.assertEquals(candidate('Hi'), 'Hi')
    lu.assertEquals(candidate('hello'), 'ehllo')
    lu.assertEquals(candidate('number'), 'bemnru')
    lu.assertEquals(candidate('abcd'), 'abcd')
    lu.assertEquals(candidate('Hello World!!!'), 'Hello !!!Wdlor')
    lu.assertEquals(candidate(''), '')
    lu.assertEquals(candidate('Hi. My name is Mister Robot. How are you?'), '.Hi My aemn is Meirst .Rboot How aer ?ouy')
end

os.exit(lu.LuaUnit.run())