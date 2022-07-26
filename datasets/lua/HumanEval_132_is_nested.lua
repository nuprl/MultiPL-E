-- Create a function that takes a string as input which contains only square brackets.
-- The function should return True if and only if there is a valid subsequence of brackets 
-- where at least one bracket in the subsequence is nested.
-- is_nested('[[]]') ➞ True
-- is_nested('[]]]]]]][[[[[]') ➞ False
-- is_nested('[][]') ➞ False
-- is_nested('[]') ➞ False
-- is_nested('[[][]]') ➞ True
-- is_nested('[[]][[') ➞ True
local function is_nested(string)
  local stack = {}
  local open = '['
  local close = ']'
  local count = 0
  for i = 1, #string do
    local char = string:sub(i, i)
    if char == open then
      table.insert(stack, char)
      count = count + 1
    elseif char == close then
      if count == 0 then
        return false
      end
      table.remove(stack)
      count = count - 1
    end
  end
  return count == 0
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = is_nested
    lu.assertEquals(candidate('[[]]'), true)
    lu.assertEquals(candidate('[]]]]]]][[[[[]'), false)
    lu.assertEquals(candidate('[][]'), false)
    lu.assertEquals(candidate('[]'), false)
    lu.assertEquals(candidate('[[[[]]]]'), true)
    lu.assertEquals(candidate('[]]]]]]]]]]'), false)
    lu.assertEquals(candidate('[][][[]]'), true)
    lu.assertEquals(candidate('[[]'), false)
    lu.assertEquals(candidate('[]]'), false)
    lu.assertEquals(candidate('[[]][['), true)
    lu.assertEquals(candidate('[[][]]'), true)
    lu.assertEquals(candidate(''), false)
    lu.assertEquals(candidate('[[[[[[[['), false)
    lu.assertEquals(candidate(']]]]]]]]'), false)
end

os.exit(lu.LuaUnit.run())