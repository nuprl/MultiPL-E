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
    local result = ""
    local vowelIndex = 1
    for i = 1, #message do
        local letter = message[i]
        if letter ~= nil then
            local index = alphabet + letter
            local nextLetter = alphabet[vowelIndex + 1]
            local nextVowel = alphabet[vowelIndex + 2]
            if letter ~= nextLetter then
                result = result .. nextLetter
            end
            if letter ~= nextVowel then
                result = result .. nextVowel
            end
            vowelIndex = vowelIndex + 3
        end
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