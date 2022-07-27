-- Create a function encrypt that takes a string as an argument and
-- returns a string encrypted with the alphabet being rotated. 
-- The alphabet should be rotated in a manner such that the letters 
-- shift down by two multiplied to two places.
-- For example:
-- encrypt('hi') returns 'lm'
-- encrypt('asdfghjkl') returns 'ewhjklnop'
-- encrypt('gf') returns 'kj'
-- encrypt('et') returns 'ix'
local function encrypt(s)
  local alphabet = "abcdefghijklmnopqrstuvwxyz"
  local alphabetLength = #alphabet
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1
  local alphabetLength = alphabetLength - 1


lu = require('luaunit')

function test_humaneval()
local candidate = encrypt
    lu.assertEquals(candidate('hi'), 'lm')
    lu.assertEquals(candidate('asdfghjkl'), 'ewhjklnop')
    lu.assertEquals(candidate('gf'), 'kj')
    lu.assertEquals(candidate('et'), 'ix')
    lu.assertEquals(candidate('faewfawefaewg'), 'jeiajeaijeiak')
    lu.assertEquals(candidate('hellomyfriend'), 'lippsqcjvmirh')
    lu.assertEquals(candidate('dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh'), 'hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl')
    lu.assertEquals(candidate('a'), 'e')
end

os.exit(lu.LuaUnit.run())