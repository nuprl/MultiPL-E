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
  local reversed = string:reverse()
  local longest_palindrome = ''
  local longest_palindrome_length = 0
  for i = 1, string:len() do
    local prefix = string:sub(1, i)
    local postfix = string:sub(i + 1, string:len())
    local palindrome = prefix .. postfix:reverse()
    if palindrome == palindrome:reverse() then
      if palindrome:len() > longest_palindrome_length then
        longest_palindrome = palindrome
        longest_palindrome_length = palindrome:len()
      end
    end
  end
  if longest_palindrome_length > 0 then
    palindrome = string .. longest_palindrome:sub(longest_palindrome_length + 1, longest_palindrome_length * 2)
  end
  return palindrome
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