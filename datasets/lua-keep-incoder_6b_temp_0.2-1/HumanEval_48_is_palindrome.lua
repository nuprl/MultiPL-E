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
  local text = text:lower()
  local i, j = text:len(), text:len()
  while i > 0 and j > 0 do
    if text:sub(i, i) ~= text:sub(j, j) then
      return false
    end
    i, j = i - 1, j - 1
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