-- Filter an input list of strings only for ones that contain given substring
-- >>> filter_by_substring([], 'a')
-- []
-- >>> filter_by_substring(['abc', 'bacd', 'cde', 'array'], 'a')
-- ['abc', 'bacd', 'array']
local function filter_by_substring(strings, substring)
  local filtered = {}
  for _, string in ipairs(strings) do
    if string:find(substring) then
      table.insert(filtered, string)
    end
  end
  return filtered
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = filter_by_substring
    lu.assertEquals(candidate({}, 'john'), {})
    lu.assertEquals(candidate({'xxx', 'asd', 'xxy', 'john doe', 'xxxAAA', 'xxx'}, 'xxx'), {'xxx', 'xxxAAA', 'xxx'})
    lu.assertEquals(candidate({'xxx', 'asd', 'aaaxxy', 'john doe', 'xxxAAA', 'xxx'}, 'xx'), {'xxx', 'aaaxxy', 'xxxAAA', 'xxx'})
    lu.assertEquals(candidate({'grunt', 'trumpet', 'prune', 'gruesome'}, 'run'), {'grunt', 'prune'})
end

os.exit(lu.LuaUnit.run())