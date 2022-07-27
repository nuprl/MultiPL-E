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
  brackets = brackets:gsub("[<>]", "")
  local opening_brackets = brackets:gsub("^<", "")
  local closing_brackets = brackets:gsub("^>", "")
  local opening_brackets_count = opening_brackets:gsub("[^<>]+", ""):gsub("^<", "")
  local closing_brackets_count = closing_brackets:gsub("[^<>]+", ""):gsub("^>", "")
  return opening_brackets_count == closing_brackets_count
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