-- From a list of integers, remove all elements that occur more than once.
-- Keep order of elements left the same as in the input.
-- >>> remove_duplicates([1, 2, 3, 2, 4])
-- [1, 3, 4]
local function remove_duplicates(numbers)
  local result = {}
  local seen = {}
  for _, num in ipairs(numbers) do
    if seen[num] then
      result[#result + 1] = num
    else
      seen[num] = true
    end
  end
  return result
end

-- Remove all elements from a list that occur more than once.
-- >>> remove_duplicates([1, 2, 3, 2, 4])
-- [1, 3]

lu = require('luaunit')

function test_humaneval()
local candidate = remove_duplicates
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({1, 2, 3, 4}), {1, 2, 3, 4})
    lu.assertEquals(candidate({1, 2, 3, 2, 4, 3, 5}), {1, 4, 5})
end

os.exit(lu.LuaUnit.run())