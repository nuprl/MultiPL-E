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
  local l0 = #s0
  local l1 = #s1
  if l0 ~= l1 then return false end
  local i
  for i=1, l0 do
    if s0[i] ~= s1[i] then return false end
  end
  return true
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