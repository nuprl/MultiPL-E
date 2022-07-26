-- From a given list of integers, generate a list of rolling maximum element found until given moment
-- in the sequence.
-- >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
-- [1, 2, 3, 3, 3, 4, 4]
local function rolling_max(numbers)
  local result = {}
  local max = numbers[1]
  result[1] = max
  for i = 2, #numbers do
    if numbers[i] > max then
      max = numbers[i]
    end
    result[i] = max
  end
  return result
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = rolling_max
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({1, 2, 3, 4}), {1, 2, 3, 4})
    lu.assertEquals(candidate({4, 3, 2, 1}), {4, 4, 4, 4})
    lu.assertEquals(candidate({3, 2, 3, 100, 3}), {3, 3, 3, 100, 100})
end

os.exit(lu.LuaUnit.run())