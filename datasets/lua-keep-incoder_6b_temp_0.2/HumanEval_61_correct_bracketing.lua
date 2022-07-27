-- brackets is a string of "(" and ")".
-- return True if every opening bracket has a corresponding closing bracket.
-- >>> correct_bracketing("(")
-- False
-- >>> correct_bracketing("()")
-- True
-- >>> correct_bracketing("(()())")
-- True
-- >>> correct_bracketing(")(()")
-- False
local function correct_bracketing(brackets)
  local opening = brackets:sub(1,1)
  local closing = brackets:sub(2,2)
  return opening:find(closing) == nil
end


lu = require('luaunit')

function test_humaneval()
local candidate = correct_bracketing
    lu.assertEquals(candidate('()'), true)
    lu.assertEquals(candidate('(()())'), true)
    lu.assertEquals(candidate('()()(()())()'), true)
    lu.assertEquals(candidate('()()((()()())())(()()(()))'), true)
    lu.assertEquals(candidate('((()())))'), false)
    lu.assertEquals(candidate(')(()'), false)
    lu.assertEquals(candidate('('), false)
    lu.assertEquals(candidate('(((('), false)
    lu.assertEquals(candidate(')'), false)
    lu.assertEquals(candidate('(()'), false)
    lu.assertEquals(candidate('()()(()())())(()'), false)
    lu.assertEquals(candidate('()()(()())()))()'), false)
end

os.exit(lu.LuaUnit.run())