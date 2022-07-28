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
    local palindrome_length = #string
    local palindrome_postfix = string
    local palindrome_prefix_length = #string
    local palindrome_prefix_postfix = string
    local palindrome_prefix_postfix_length = #string
    local palindrome_prefix_postfix_postfix = string
    local palindrome_prefix_postfix_postfix_length = #string
    local palindrome_prefix_postfix_postfix_postfix = string
    local palindrome_prefix_postfix_postfix_postfix_length = #string
    local palindrome_prefix_postfix_postfix_postfix_postfix = string
    local palindrome_prefix_postfix_postfix_postfix_postfix_length = #string
    local palindrome_prefix_postfix_postfix_postfix_postfix_postfix = string
    local palindrome_prefix_postfix_postfix_postfix_postfix_postfix_length = #string
    local palindrome_prefix_postfix_postfix_postfix_postfix_postfix_postfix = string
    local palindrome_prefix_postfix_postfix_postfix_postfix_postfix_postfix_length = #string
    local palindrome_prefix_postfix_postfix_postfix_postfix_postfix_postfix_postfix = string
    local palindrome_prefix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_length = #string
    local palindrome_prefix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix = string
    local palindrome_prefix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_length = #string
    local palindrome_prefix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix = string
    local palindrome_prefix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_postfix_

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