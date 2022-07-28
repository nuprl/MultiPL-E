-- Check if two words have the same characters.
-- >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
-- True
-- >>> same_chars('abcd', 'dddddddabc')
-- True
-- >>> same_chars('dddddddabc', 'abcd')
-- True
-- >>> same_chars('eabcd', 'dddddddabc')
-- False
-- >>> same_chars('abcd', 'dddddddabce')
-- False
-- >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
-- False
local function same_chars(s0, s1)
  local i0 = 0
  local i1 = 0
  local i0len = #s0
  local i1len = #s1
  while i0 < i0len and i1 < i1len do
    if s0[i0] == s1[i1] then
      i0 = i0 + 1
      i1 = i1 + 1
    else
      return false
    end
  end
  return i0 == i1len
end

-- Check if two words have the same characters.
-- >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
-- True
-- >>> same_chars('abcd', 'dddddddabc')
-- True
-- >>> same_chars('dddddddabc', 'abcd')
-- True
-- >>> same_chars('eabcd', 'dddddddabc')
-- False
-- >>> same_chars('abcd', 'dddddddabce')
-- False
-- >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
-- False

lu = require('luaunit')

function test_humaneval()
local candidate = same_chars
    lu.assertEquals(candidate('eabcdzzzz', 'dddzzzzzzzddeddabc'), true)
    lu.assertEquals(candidate('abcd', 'dddddddabc'), true)
    lu.assertEquals(candidate('dddddddabc', 'abcd'), true)
    lu.assertEquals(candidate('eabcd', 'dddddddabc'), false)
    lu.assertEquals(candidate('abcd', 'dddddddabcf'), false)
    lu.assertEquals(candidate('eabcdzzzz', 'dddzzzzzzzddddabc'), false)
    lu.assertEquals(candidate('aabb', 'aaccc'), false)
end

os.exit(lu.LuaUnit.run())