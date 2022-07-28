-- You'll be given a string of words, and your task is to count the number
-- of boredoms. A boredom is a sentence that starts with the word "I".
-- Sentences are delimited by '.', '?' or '!'.
-- For example:
-- >>> is_bored("Hello world")
-- 0
-- >>> is_bored("The sky is blue. The sun is shining. I love this weather")
-- 1
local function is_bored(S)
  local boredoms = 0
  for w in S:gmatch("[%S%.]") do
    if w == "I" then
      boredoms = boredoms + 1
    end
  end
  return boredoms
end

-- The is_gentleman function checks to see if a person is gentlemanly manned.
-- -- You will be given a string of words, and your task is to count the number
-- of gentlemanly manned people. A gentlemanly manned person is someone who
-- has a grade A or above, and who is manned in a manner that makes them
-- gentle. A manned man is someone who has a grade B or above, and who is manned
-- in a manner that makes them gentle. For example, a man who is manned in a
-- manner that makes them gentle is someone who is grade A or above, and who
-- is manned in a manner that makes them gentle. For example:
-- >>> is_gentleman("Hello world")
-- 0
-- >>> is_gentleman("The sky is blue. The sun is shining. I love this weather")
-- 1

lu = require('luaunit')

function test_humaneval()
local candidate = is_bored
    lu.assertEquals(candidate('Hello world'), 0)
    lu.assertEquals(candidate('Is the sky blue?'), 0)
    lu.assertEquals(candidate('I love It !'), 1)
    lu.assertEquals(candidate('bIt'), 0)
    lu.assertEquals(candidate('I feel good today. I will be productive. will kill It'), 2)
    lu.assertEquals(candidate('You and I are going for a walk'), 0)
end

os.exit(lu.LuaUnit.run())