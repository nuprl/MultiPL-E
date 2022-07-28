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
  local output = ''
  for i = 1, #message do
    local letter = message[i]
    local vowel = letter:sub(1, 1)
    local letterIndex = alphabet + vowel
    local letterIndex = letterIndex:sub(1, 1)
    local letterIndex = letterIndex:sub(2, 2)
    local letterIndex = letterIndex:sub(3, 3)
    local letterIndex = letterIndex:sub(4, 4)
    local letterIndex = letterIndex:sub(5, 5)
    local letterIndex = letterIndex:sub(6, 6)
    local letterIndex = letterIndex:sub(7, 7)
    local letterIndex = letterIndex:sub(8, 8)
    local letterIndex = letterIndex:sub(9, 9)
    local letterIndex = letterIndex:sub(10, 10)
    local letterIndex = letterIndex:sub(11, 11)
    local letterIndex = letterIndex:sub(12, 12)
    local letterIndex = letterIndex:sub(13, 13)
    local letterIndex = letterIndex:sub(14, 14)
    local letterIndex = letterIndex:sub(15, 15)
    local letterIndex = letterIndex:sub(16, 16)
    local letterIndex = letterIndex:sub(17, 17)
    local letterIndex = letterIndex:sub(18, 18)
    local letterIndex = letterIndex:sub(19, 19)
    local letterIndex = letterIndex:sub(20, 20)
    local letterIndex = letterIndex:sub(21, 21)
    local letterIndex = letterIndex:sub(22, 22)
    local letterIndex = letterIndex:sub(23, 23)
    local letterIndex = letterIndex:sub(24, 24)
    local letterIndex = letterIndex:sub(25, 25)
    local letterIndex = letterIndex:sub(26, 26)
    local letterIndex = letterIndex:sub(27, 27)
    local letterIndex = letterIndex:sub(28, 28)
    local letterIndex = letterIndex:sub(29, 29)
    local letterIndex = letterIndex:sub(30, 30)
    local letterIndex = letterIndex:sub(31, 31)
    local letterIndex = letterIndex:sub(32, 32)
    local letterIndex = letterIndex:sub(33, 33)
    local letterIndex = letterIndex:sub(34, 34)
    local letterIndex = letterIndex:sub(35, 35)
    local letterIndex = letterIndex:sub(36, 36)
    local letterIndex = letterIndex:sub(37, 37)
    local letterIndex = letterIndex:sub(38, 38)
    local letterIndex = letterIndex:sub(39, 39)
    local letter

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