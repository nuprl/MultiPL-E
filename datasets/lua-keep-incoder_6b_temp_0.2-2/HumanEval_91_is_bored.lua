-- You'll be given a string of words, and your task is to count the number
-- of boredoms. A boredom is a sentence that starts with the word "I".
-- Sentences are delimited by '.', '?' or '!'.
-- For example:
-- >>> is_bored("Hello world")
-- 0
-- >>> is_bored("The sky is blue. The sun is shining. I love this weather")
-- 1
local function is_bored(S)
  local boredoms = {}
  for w in S:gmatch("[%S]+") do
    if w == "I" then
      table.insert(boredoms, 1)
    else
      local count = 0
      for _, _ in pairs(boredoms) do
        count = count + 1
      end
      table.insert(boredoms, count)
    end
  end
  return table.max(boredoms)
end

-- The is_gentleman() function is a wrapper for is_bored(). It returns 1 if
-- the sentence is gentle, and 0 otherwise.
-- The gentleman is a person who writes more sentences than bored. He
-- writes sentences more often than he bores.
-- -- >>> is_gentleman("Hello world")
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