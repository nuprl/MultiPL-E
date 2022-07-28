-- Checks if given string is a palindrome
-- >>> is_palindrome('')
-- True
-- >>> is_palindrome('aba')
-- True
-- >>> is_palindrome('aaaaa')
-- True
-- >>> is_palindrome('zbcd')
-- False
local function is_palindrome(text)
  local i, j = 1, #text
  while i <= j do
    if text[i] ~= text[j] then
      return false
    end
    i = i + 1
    j = j - 1
  end
  return true
end


lu = require('luaunit')

function test_humaneval()
local candidate = is_palindrome
    lu.assertEquals(candidate(''), true)
    lu.assertEquals(candidate('aba'), true)
    lu.assertEquals(candidate('aaaaa'), true)
    lu.assertEquals(candidate('zbcd'), false)
    lu.assertEquals(candidate('xywyx'), true)
    lu.assertEquals(candidate('xywyz'), false)
    lu.assertEquals(candidate('xywzx'), false)
end

os.exit(lu.LuaUnit.run())