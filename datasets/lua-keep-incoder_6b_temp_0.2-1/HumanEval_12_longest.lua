-- Out of list of strings, return the longest one. Return the first one in case of multiple
-- strings of the same length. Return None in case the input list is empty.
-- >>> longest([])
-- >>> longest(['a', 'b', 'c'])
-- 'a'
-- >>> longest(['a', 'bb', 'ccc'])
-- 'ccc'
local function longest(strings)
  local longest, longestLength = nil, 0
  for _, str in ipairs(strings) do
    local length = #str
    if length > longestLength then
      longest, longestLength = str, length
    end
  end
  return longest
end


lu = require('luaunit')

function test_humaneval()
local candidate = longest
    lu.assertEquals(candidate({}), None)
    lu.assertEquals(candidate({'x', 'y', 'z'}), 'x')
    lu.assertEquals(candidate({'x', 'yyy', 'zzzz', 'www', 'kkkk', 'abc'}), 'zzzz')
end

os.exit(lu.LuaUnit.run())