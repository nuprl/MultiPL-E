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
  local stack = {}
  for i = 1, #brackets do
    local bracket = brackets:sub(i, i)
    if bracket == "<" then
      table.insert(stack, bracket)
    elseif bracket == ">" then
      if #stack == 0 or stack[#stack] ~= "<" then
        return false
      end
      table.remove(stack)
    end
  end
  return #stack == 0
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