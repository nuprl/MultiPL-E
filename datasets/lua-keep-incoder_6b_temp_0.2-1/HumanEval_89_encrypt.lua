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
  local alphabet = 'abcdefghijklmnopqrstuvwxyz'
  local alphabetLength = #alphabet
  local alphabetShiftDown = 2
  local alphabetShiftUp = 2
  local alphabetShiftRight = 2
  local alphabetShiftLeft = 2
  local alphabetShiftLeftRight = 2
  local alphabetShiftRightLeft = 2
  local alphabetShiftUpRight = 2
  local alphabetShiftUpLeft = 2
  local alphabetShiftUpLeftRight = 2
  local alphabetShiftUpRightLeft = 2
  local alphabetShiftDownRight = 2
  local alphabetShiftDownLeft = 2
  local alphabetShiftDownLeftRight = 2
  local alphabetShiftDownRightLeft = 2
  local alphabetShiftUpRightRight = 2
  local alphabetShiftUpRightLeft = 2
  local alphabetShiftUpLeftRight = 2
  local alphabetShiftUpLeftLeft = 2
  local alphabetShiftDownRightRight = 2
  local alphabetShiftDownRightLeft = 2
  local alphabetShiftDownLeftRight = 2
  local alphabetShiftDownLeftLeft = 2
  local alphabetShiftUpRightRight = 2
  local alphabetShiftUpRightLeft = 2
  local alphabetShiftUpLeftRight = 2
  local alphabetShiftUpLeftLeft = 2
  local alphabetShiftDownRightRight = 2
  local alphabetShiftDownRightLeft = 2
  local alphabetShiftDownLeftRight = 2
  local alphabetShiftDownLeftLeft = 2
  local alphabetShiftUpRightRight = 2
  local alphabetShiftUpRightLeft = 2
  local alphabetShiftUpLeftRight = 2
  local alphabetShiftUpLeftLeft = 2
  local alphabetShiftDownRightRight = 2
  local alphabetShiftDownRightLeft = 2
  local alphabetShiftDownLeftRight = 2
  local alphabetShiftDownLeftLeft = 2
  local alphabetShiftUpRightRight = 2
  local alphabetShiftUpRightLeft = 2
  local alphabetShiftUpLeftRight = 2
  local alphabetShiftUpLeftLeft = 2
  local alphabetShiftDownRightRight = 2
  local alphabetShiftDownRightLeft = 2
  local alphabetShiftDownLeftRight = 2
  local alphabetShiftDownLeftLeft = 2
  local alphabetShiftUpRightRight = 2
  local alphabetShiftUpRightLeft = 2
  local alphabetShiftUpLeftRight = 2
  local alphabetShiftUpLeftLeft = 2
  local alphabetShiftDownRightRight = 2
  local alphabetShiftDownRightLeft = 2
  local alphabetShiftDownLeftRight = 2
  local alphabetShiftDownLeftLeft = 2
  local alphabetShiftUpRightRight = 2
  local alphabetShiftUpRightLeft

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