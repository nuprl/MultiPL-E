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
  local palindrome = string
  local postfix = string
  local postfix_len = #string
  local postfix_reverse = string
  local postfix_reverse_len = #string
  local palindrome_len = #palindrome
  while postfix_len > 0 do
    local postfix_reverse = string
    local postfix_reverse_len = #string
    for i = 1, postfix_len do
      local char = string.sub(postfix, i, i)
      local char_reverse = string.sub(postfix_reverse, i, i)
      if char_reverse ~= char then
        postfix_reverse = string.sub(postfix, 1, i-1) .. char_reverse .. string.sub(postfix, i+1, i)
        postfix_reverse_len = #postfix_reverse
      end
    end
    if postfix_reverse ~= postfix then
      postfix = postfix_reverse
      postfix_len = postfix_reverse_len
    end
  end
  return palindrome
end

-- Find the longest palindrome that begins with a supplied string.
-- Algorithm idea is simple:
-- - Find the longest postfix of supplied string that is a palindrome.
-- - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
-- >>> make_palindrome('')
-- ''
-- >>> make_palindrome('cat')
-- 'catac'
-- >>> make_palindrome('cata')
-- 'catac'

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