-- brackets is a string of "<" and ">".
-- return True if every opening bracket has a corresponding closing bracket.
-- >>> correct_bracketing("<")
-- False
-- >>> correct_bracketing("<>")
-- True
-- >>> correct_bracketing("<<><>>")
-- True
-- >>> correct_bracketing("><<>")
-- False
local function correct_bracketing(brackets)
  local opening_brackets = brackets:gsub("[<>]", "")
  local closing_brackets = brackets:gsub("[<>]", "")
  local opening_brackets_count = opening_brackets:len()
  if opening_brackets_count ~= closing_brackets:len() then
    return false
  end
  for i = 1, opening_brackets_count do
    local opening_bracket = opening_brackets:sub(i, i)
    local closing_bracket = closing_brackets:sub(i, i)
    if opening_bracket ~= closing_bracket then
      return false
    end
  end
  return true
end


lu = require('luaunit')

function test_humaneval()
local candidate = correct_bracketing
    lu.assertEquals(candidate('<>'), true)
    lu.assertEquals(candidate('<<><>>'), true)
    lu.assertEquals(candidate('<><><<><>><>'), true)
    lu.assertEquals(candidate('<><><<<><><>><>><<><><<>>>'), true)
    lu.assertEquals(candidate('<<<><>>>>'), false)
    lu.assertEquals(candidate('><<>'), false)
    lu.assertEquals(candidate('<'), false)
    lu.assertEquals(candidate('<<<<'), false)
    lu.assertEquals(candidate('>'), false)
    lu.assertEquals(candidate('<<>'), false)
    lu.assertEquals(candidate('<><><<><>><>><<>'), false)
    lu.assertEquals(candidate('<><><<><>><>>><>'), false)
end

os.exit(lu.LuaUnit.run())