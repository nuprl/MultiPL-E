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
  -- Write your code here
  local new_s = ''
  for i = 1, #s do
    local char = string.sub(s,i,i)
    local ascii = string.byte(char) -- ascii value of char
    if ascii < 32 then
      new_s = new_s .. char
    else
      new_s = new_s .. string.sub(s,i,i-1)
    end
  end
  return new_s
end

-- Write a function that takes a string and returns an ordered version of it.
-- Ordered version of string, is a string where all words (separated by space)
-- are replaced by a new word where all the characters arranged in
-- descending order based on ascii value.
-- Note: You should keep the order of words and blank spaces in the sentence.
-- For example:
-- anti_shuffle('Hi') returns 'Hi'
-- anti_shuffle('hello') returns 'olleh'
-- anti_shuffle('Hello World!!!') returns 'World!!! olleh'

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