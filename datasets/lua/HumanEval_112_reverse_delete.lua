-- Task
-- We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
-- then check if the result string is palindrome.
-- A string is called palindrome if it reads the same backward as forward.
-- You should return a tuple containing the result string and True/False for the check.
-- Example
-- For s = "abcde", c = "ae", the result should be ('bcd',False)
-- For s = "abcdef", c = "b"  the result should be ('acdef',False)
-- For s = "abcdedcba", c = "ab", the result should be ('cdedc',True)
local function reverse_delete(s, c)
  local s_new = ""
  local is_palindrome = true
  for i = 1, #s do
    local char = s:sub(i, i)
    if c:find(char) == nil then
      s_new = s_new .. char
    end
  end
  for i = 1, #s_new / 2 do
    local char_1 = s_new:sub(i, i)
    local char_2 = s_new:sub(#s_new - i + 1, #s_new - i + 1)
    if char_1 ~= char_2 then
      is_palindrome = false
    end
  end
  return s_new, is_palindrome
end

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_delete
    lu.assertEquals(candidate('abcde', 'ae'), {'bcd', false})
    lu.assertEquals(candidate('abcdef', 'b'), {'acdef', false})
    lu.assertEquals(candidate('abcdedcba', 'ab'), {'cdedc', true})
    lu.assertEquals(candidate('dwik', 'w'), {'dik', false})
    lu.assertEquals(candidate('a', 'a'), {'', true})
    lu.assertEquals(candidate('abcdedcba', ''), {'abcdedcba', true})
    lu.assertEquals(candidate('abcdedcba', 'v'), {'abcdedcba', true})
    lu.assertEquals(candidate('vabba', 'v'), {'abba', true})
    lu.assertEquals(candidate('mamma', 'mia'), {'', true})
end

os.exit(lu.LuaUnit.run())