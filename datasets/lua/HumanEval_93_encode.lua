-- Write a function that takes a message, and encodes in such a 
-- way that it swaps case of all letters, replaces all vowels in 
-- the message with the letter that appears 2 places ahead of that 
-- vowel in the english alphabet. 
-- Assume only letters. 
-- Examples:
-- >>> encode('test')
-- 'TGST'
-- >>> encode('This is a message')
-- 'tHKS KS C MGSSCGG'
local function encode(message)
  local result = ''
  for i = 1, #message do
    local letter = message:sub(i, i)
    if letter:match('%a') then
      local index = string.find(string.lower(message), letter)
      local vowel = string.lower(letter)
      if vowel == 'a' then
        vowel = 'e'
      elseif vowel == 'e' then
        vowel = 'i'
      elseif vowel == 'i' then
        vowel = 'o'
      elseif vowel == 'o' then
        vowel = 'u'
      elseif vowel == 'u' then
        vowel = 'a'
      end
      result = result .. vowel
    else
      result = result .. letter
    end
  end
  return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = encode
    lu.assertEquals(candidate('TEST'), 'tgst')
    lu.assertEquals(candidate('Mudasir'), 'mWDCSKR')
    lu.assertEquals(candidate('YES'), 'ygs')
    lu.assertEquals(candidate('This is a message'), 'tHKS KS C MGSSCGG')
    lu.assertEquals(candidate('I DoNt KnOw WhAt tO WrItE'), 'k dQnT kNqW wHcT Tq wRkTg')
end

os.exit(lu.LuaUnit.run())