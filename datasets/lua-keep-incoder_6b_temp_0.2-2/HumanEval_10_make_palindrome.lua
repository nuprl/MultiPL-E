-- Find the shortest palindrome that begins with a supplied string.
-- Algorithm idea is simple:
-- - Find the longest postfix of supplied string that is a palindrome.
-- - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
-- >>> make_palindrome('')
-- ''
-- >>> make_palindrome('cat')
-- 'catac'
-- >>> make_palindrome('cata')
-- 'catac'
local function make_palindrome(string)
  -- Find the longest postfix of supplied string that is a palindrome.
  local function find_longest_postfix(string)
    local postfix = string
    local longest_postfix = string
    local longest_postfix_length = 1
    local longest_postfix_index = 1
    while longest_postfix_index <= #string do
      local postfix_length = #postfix - longest_postfix_index
      if postfix_length == 0 then
        longest_postfix_index = #string
      elseif postfix_length < longest_postfix_length then
        longest_postfix_length = postfix_length
        longest_postfix = postfix
        longest_postfix_index = longest_postfix_index + 1
      else
        longest_postfix_index = longest_postfix_index + 1
      end
    end
    return longest_postfix
  end

lu = require('luaunit')

function test_humaneval()
local candidate = make_palindrome
    lu.assertEquals(candidate(''), '')
    lu.assertEquals(candidate('x'), 'x')
    lu.assertEquals(candidate('xyz'), 'xyzyx')
    lu.assertEquals(candidate('xyx'), 'xyx')
    lu.assertEquals(candidate('jerry'), 'jerryrrej')
end

os.exit(lu.LuaUnit.run())