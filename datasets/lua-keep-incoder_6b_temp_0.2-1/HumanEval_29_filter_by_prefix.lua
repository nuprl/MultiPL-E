-- Filter an input list of strings only for ones that start with a given prefix.
-- >>> filter_by_prefix([], 'a')
-- []
-- >>> filter_by_prefix(['abc', 'bcd', 'cde', 'array'], 'a')
-- ['abc', 'array']
local function filter_by_prefix(strings, prefix)
  local result = {}
  for _, s in ipairs(strings) do
    if s:sub(1, #prefix) == prefix then
      table.insert(result, s)
    end
  end
  return result
end

-- Filter an input list of strings only for ones that end with a given suffix.
-- >>> filter_by_suffix([], 'a')
-- []
-- >>> filter_by_suffix(['abc', 'bcd', 'cde', 'array'], 'a')
-- ['abc']

lu = require('luaunit')

function test_humaneval()
local candidate = filter_by_prefix
    lu.assertEquals(candidate({}, 'john'), {})
    lu.assertEquals(candidate({'xxx', 'asd', 'xxy', 'john doe', 'xxxAAA', 'xxx'}, 'xxx'), {'xxx', 'xxxAAA', 'xxx'})
end

os.exit(lu.LuaUnit.run())