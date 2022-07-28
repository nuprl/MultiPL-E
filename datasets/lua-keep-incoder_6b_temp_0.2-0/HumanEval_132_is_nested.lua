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
  local brackets = string.gsub(string, '[', '') -- Remove all brackets
  local brackets_count = string.len(brackets)
  local open_brackets = string.gsub(brackets, '{', '') -- Remove all open brackets
  local open_brackets_count = string.len(open_brackets)
  local close_brackets = string.gsub(brackets, '}', '') -- Remove all close brackets
  local close_brackets_count = string.len(close_brackets)
  return brackets_count > 0 and open_brackets_count > 0 and close_brackets_count > 0
end

-- Create a function that takes a string as input which contains only square brackets.
-- The function should return True if and only if there is a valid subsequence of brackets 
-- where at least one bracket in the subsequence is nested.
-- is_nested('[[]]') ➞ True
-- is_nested('[]]]]]]][[[[[]') ➞ False
-- is_nested('[][]') ➞ False
-- is_nested('[]') ➞ False
-- is_nested('[[][]]') ➞ True
-- is_nested('[[]][[') ➞ True

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