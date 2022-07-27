-- From a list of integers, remove all elements that occur more than once.
-- Keep order of elements left the same as in the input.
-- >>> remove_duplicates([1, 2, 3, 2, 4])
-- [1, 3, 4]
local function remove_duplicates(numbers)
  local seen = {}
  local output = {}
  for _, v in ipairs(numbers) do
    if seen[v] then
      table.insert(output, v)
    else
      seen[v] = true
    end
  end
  return output
end

-- From a list of integers, remove all elements that occur less than once.
-- Keep order of elements left the same as in the input.
-- >>> remove_duplicates([1, 2, 3, 2])
-- [1, 3]

lu = require('luaunit')

function test_humaneval()
local candidate = remove_duplicates
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({1, 2, 3, 4}), {1, 2, 3, 4})
    lu.assertEquals(candidate({1, 2, 3, 2, 4, 3, 5}), {1, 4, 5})
end

os.exit(lu.LuaUnit.run())