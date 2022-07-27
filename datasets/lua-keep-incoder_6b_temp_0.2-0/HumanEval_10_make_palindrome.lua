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
  -- If string is empty or null, return empty string.
  -- If string contains only digits, return string.
  -- If string contains only letters, return string.
  -- If string contains only spaces, return string.
  -- If string contains only punctuation, return string.
  -- If string contains only special characters, return string.
  if string == nil then
    return ''
  elseif string.match '^%d+$' then
    return string
  elseif string.match '^[a-zA-Z]+$' then
    return string
  elseif string.match '^%s+$' then
    return string
  elseif string.match '^[%p]+$' then
    return string
  elseif string.match '^[%w]+$' then
    return string
  else
    return string
  end
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