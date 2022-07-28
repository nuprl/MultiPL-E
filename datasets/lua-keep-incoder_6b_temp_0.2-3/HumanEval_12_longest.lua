-- Out of list of strings, return the longest one. Return the first one in case of multiple
-- strings of the same length. Return None in case the input list is empty.
-- >>> longest([])
-- >>> longest(['a', 'b', 'c'])
-- 'a'
-- >>> longest(['a', 'bb', 'ccc'])
-- 'ccc'
local function longest(strings)
  if #strings == 0 then
    return nil
  end
  local longest_len = strings[1]:len()
  for i = 2, #strings do
    if strings[i]:len() > longest_len then
      longest_len = strings[i]:len()
    end
  end
  return strings[#strings]
end


lu = require('luaunit')

function test_humaneval()
local candidate = longest
    lu.assertEquals(candidate({}), None)
    lu.assertEquals(candidate({'x', 'y', 'z'}), 'x')
    lu.assertEquals(candidate({'x', 'yyy', 'zzzz', 'www', 'kkkk', 'abc'}), 'zzzz')
end

os.exit(lu.LuaUnit.run())