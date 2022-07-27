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
    local open_brackets = string.gsub(string, "[", "")
    local close_brackets = string.gsub(string, "]", "")
    local open_brackets = open_brackets:gsub("^%w+", "")
    local close_brackets = close_brackets:gsub("^%w+", "")
    local open_brackets = open_brackets:gsub("%w+%w+", "")
    local close_brackets = close_brackets:gsub("%w+%w+", "")
    local open_brackets = open_brackets:gsub("%w+", "")
    local close_brackets = close_brackets:gsub("%w+", "")
    local open_brackets = open_brackets:gsub("%w", "")
    local close_brackets = close_brackets:gsub("%w", "")
    local open_brackets = open_brackets:gsub("%", "")
    local close_brackets = close_brackets:gsub("%", "")
    local open_brackets = open_brackets:gsub("]", "")
    local close_brackets = close_brackets:gsub("]", "")
    local open_brackets = open_brackets:gsub("[", "")
    local close_brackets = close_brackets:gsub("[", "")
    local open_brackets = open_brackets:gsub("%w", "")
    local close_brackets = close_brackets:gsub("%w", "")
    local open_brackets = open_brackets:gsub("%", "")
    local close_brackets = close_brackets:gsub("%", "")
    local open_brackets = open_brackets:gsub("]", "")
    local close_brackets = close_brackets:gsub("]", "")
    local open_brackets = open_brackets:gsub("[", "")
    local close_brackets = close_brackets:gsub("[", "")
    local open_brackets = open_brackets:gsub("]", "")
    local close_brackets = close_brackets:gsub("]", "")
    local open_brackets = open_brackets:gsub("[", "")
    local close_brackets = close_brackets:gsub("[

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