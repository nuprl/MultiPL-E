-- Filter given list of any python values only for integers
-- >>> filter_integers(['a', 3.14, 5])
-- [5]
-- >>> filter_integers([1, 2, 3, 'abc', {}, []])
-- [1, 2, 3]
local function filter_integers(values)
  local results = {}
  for _, value in pairs(values) do
    if type(value) == 'number' then
      table.insert(results, value)
    end
  end
  return results
end

-- Filter given list of any python values only for booleans
-- >>> filter_booleans(['a', 3.14, 5])
-- [true, false]
-- >>> filter_booleans([true, false, true])
-- [true, true]

lu = require('luaunit')

function test_humaneval()
local candidate = filter_integers
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({4, {}, {}, 23.2, 9, 'adasd'}), {4, 9})
    lu.assertEquals(candidate({3, 'c', 3, 3, 'a', 'b'}), {3, 3, 3})
end

os.exit(lu.LuaUnit.run())