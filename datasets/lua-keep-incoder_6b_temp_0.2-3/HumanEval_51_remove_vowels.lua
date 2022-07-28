-- remove_vowels is a function that takes string and returns string without vowels.
-- >>> remove_vowels('')
-- ''
-- >>> remove_vowels('abcdef')
-- 'bcdf'
-- >>> remove_vowels('aaaaa')
-- ''
-- >>> remove_vowels('aaBAA')
-- 'B'
-- >>> remove_vowels('zbcd')
-- 'zbcd'
local function remove_vowels(text)
  local vowels = {'a', 'e', 'i', 'o', 'u', 'y'}
  local new_text = ''
  for i = 1, #text do
    if vowels[text[i]] then
      new_text = new_text .. text[i]
    end
  end
  return new_text
end

-- remove_digits is a function that takes string and returns string without digits.
-- >>> remove_digits('')
-- ''
-- >>> remove_digits('abc123')
-- 'abc'
-- >>> remove_digits('123abc')
-- '123'
-- >>> remove_digits('123abc456')
-- '123abc'

lu = require('luaunit')

function test_humaneval()
local candidate = remove_vowels
    lu.assertEquals(candidate(''), '')
    lu.assertEquals(candidate('abcdef\nghijklm'), 'bcdf\nghjklm')
    lu.assertEquals(candidate('fedcba'), 'fdcb')
    lu.assertEquals(candidate('eeeee'), '')
    lu.assertEquals(candidate('acBAA'), 'cB')
    lu.assertEquals(candidate('EcBOO'), 'cB')
    lu.assertEquals(candidate('ybcd'), 'ybcd')
end

os.exit(lu.LuaUnit.run())