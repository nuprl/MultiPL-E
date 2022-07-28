-- You are given a string representing a sentence,
-- the sentence contains some words separated by a space,
-- and you have to return a string that contains the words from the original sentence,
-- whose lengths are prime numbers,
-- the order of the words in the new string should be the same as the original one.
-- Example 1:
-- Input: sentence = "This is a test"
-- Output: "is"
-- Example 2:
-- Input: sentence = "lets go for swimming"
-- Output: "go for"
-- Constraints:
-- * 1 <= len(sentence) <= 100
-- * sentence contains only letters
local function words_in_sentence(sentence)
  local prime_words = {}
  local prime_words_len = {}
  for i = 2, #sentence do
    local prime_words_len[i] = 1
    for j = 2, #prime_words do
      if prime_words[j] == sentence[i] then
        prime_words_len[i] = prime_words_len[i] + 1
      end
    end
    prime_words[#prime_words] = sentence[i]
  end
  local result = ""
  for i = 2, #prime_words do
    if prime_words_len[i] == #sentence then
      result = result .. prime_words[i]
    end
  end
  return result
end

-- Return the number of words in the given string.
-- The string contains only letters.
-- Example 1:
-- Input: sentence = "This is a test"
-- Output: 5
-- Example 2:
-- Input: sentence = "lets go for swimming"
-- Output: 3
-- Constraints:
-- * 1 <= len(sentence) <= 100
-- * sentence contains only letters

lu = require('luaunit')

function test_humaneval()
local candidate = words_in_sentence
    lu.assertEquals(candidate('This is a test'), 'is')
    lu.assertEquals(candidate('lets go for swimming'), 'go for')
    lu.assertEquals(candidate('there is no place available here'), 'there is no place')
    lu.assertEquals(candidate('Hi I am Hussein'), 'Hi am Hussein')
    lu.assertEquals(candidate('go for it'), 'go for it')
    lu.assertEquals(candidate('here'), '')
    lu.assertEquals(candidate('here is'), 'is')
end

os.exit(lu.LuaUnit.run())