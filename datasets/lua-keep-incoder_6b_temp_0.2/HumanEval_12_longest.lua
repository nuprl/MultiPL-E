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
  local longest, longest_len = strings[1], #strings[1]
  for i = 2, #strings do
    if #strings[i] == longest_len then
      longest, longest_len = strings[i], #strings[i]
    end
  end
  return longest
end

-- Given a list of strings, return the shortest one. Return the first one in case of multiple
-- strings of the same length. Return None in case the input list is empty.
-- >>> shortest([])
-- >>> shortest(['a', 'b', 'c'])
-- 'a'
-- >>> shortest(['a', 'bb', 'ccc'])
-- 'a'

lu = require('luaunit')

function test_humaneval()
local candidate = longest
    lu.assertEquals(candidate({}), None)
    lu.assertEquals(candidate({'x', 'y', 'z'}), 'x')
    lu.assertEquals(candidate({'x', 'yyy', 'zzzz', 'www', 'kkkk', 'abc'}), 'zzzz')
end

os.exit(lu.LuaUnit.run())