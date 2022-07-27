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
  local alphabet = "abcdefghijklmnopqrstuvwxyz"
  local vowels = "aeiou"
  local result = ''
  local vowelIndex = 1
  for i = 1, #message do
    local char = message[i]
    if char == 'a' then
      char = alphabet[vowelIndex]
      vowelIndex = vowelIndex + 1
    end
    if char == 'e' then
      char = alphabet[vowelIndex]
      vowelIndex = vowelIndex + 1
    end
    if char == 'i' then
      char = alphabet[vowelIndex]
      vowelIndex = vowelIndex + 1
    end
    if char == 'o' then
      char = alphabet[vowelIndex]
      vowelIndex = vowelIndex + 1
    end
    if char == 'u' then
      char = alphabet[vowelIndex]
      vowelIndex = vowelIndex + 1
    end
    if char == 'y' then
      char = alphabet[vowelIndex]
      vowelIndex = vowelIndex + 1
    end
    if char == 'A' then
      char = alphabet[vowelIndex]
      vowelIndex = vowelIndex + 1
    end
    if char == 'E' then
      char = alphabet[vowelIndex]
      vowelIndex = vowelIndex + 1
    end
    if char == 'I' then
      char = alphabet[vowelIndex]
      vowelIndex = vowelIndex + 1
    end
    if char == 'O' then
      char = alphabet[vowelIndex]
      vowelIndex = vowelIndex + 1
    end
    if char == 'U' then
      char = alphabet[vowelIndex]
      vowelIndex = vowelIndex + 1
    end
    if char == 'Y' then
      char = alphabet[vowelIndex]
      vowelIndex = vowelIndex + 1
    end
    result = result .. char
  end
  return result
end

-- Write a function that takes a message, and encodes in such a 
-- way that it swaps case of all letters, replaces all vowels in 
-- the message with the letter that appears 2 places ahead of that 
-- vowel in the english alphabet. 
-- Assume only letters. 
-- Examples:
-- >>> decode('tHKS KS C MGSSCGG')
-- 'This is a message'
-- >>> decode('TGST')
-- 'test'

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