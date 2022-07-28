-- From a given list of integers, generate a list of rolling maximum element found until given moment
-- in the sequence.
-- >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
-- [1, 2, 3, 3, 3, 4, 4]
local function rolling_max(numbers)
  local rolling_max = nil
  local rolling_max_index = nil
  local rolling_max_value = nil
  for i = 1, #numbers do
    local value = numbers[i]
    if rolling_max_value == nil then
      rolling_max_value = value
      rolling_max_index = i
    else
      if value > rolling_max_value then
        rolling_max_value = value
        rolling_max_index = i
      end
    end
  end
  if rolling_max_index == nil then
    return numbers
  end
  local rolling_max_value = numbers[rolling_max_index]
  local rolling_max_index = rolling_max_index - 1
  local rolling_max_value = numbers[rolling_max_index]
  local rolling_max_index = rolling_max_index - 1
  local rolling_max_value = numbers[rolling_max_index]
  local rolling_max_index = rolling_max_index - 1
  local rolling_max_value = numbers[rolling_max_index]
  local rolling_max_index = rolling_max_index - 1
  local rolling_max_value = numbers[rolling_max_index]
  local rolling_max_index = rolling_max_index - 1
  local rolling_max_value = numbers[rolling_max_index]
  local rolling_max_index = rolling_max_index - 1
  local rolling_max_value = numbers[rolling_max_index]
  local rolling_max_index = rolling_max_index - 1
  local rolling_max_value = numbers[rolling_max_index]
  local rolling_max_index = rolling_max_index - 1
  local rolling_max_value = numbers[rolling_max_index]
  local rolling_max_index = rolling_max_index - 1
  local rolling_max_value = numbers[rolling_max_index]
  local rolling_max_index = rolling_max_index - 1
  local rolling_max_value = numbers[rolling_max_index]
  local rolling_max_index = rolling_max_index - 1
  local rolling_max_value = numbers[rolling_max_index]
  local rolling_max_index = rolling_max_index - 1
  local rolling_max_value = numbers[rolling_max_index]
  local rolling_max_index = rolling_max_index - 1
  local rolling_max_value = numbers[rolling_max_index]
  local rolling_max_index = rolling_max_index - 1
  local rolling_max_value = numbers[rolling_max_index]
  local rolling_max_index = rolling_max_index - 1
  local rolling_max_value = numbers[rolling_max_index]
  local rolling_max_index = rolling_max_index - 1
  local rolling_max_value = numbers[roll

lu = require('luaunit')

function test_humaneval()
local candidate = rolling_max
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({1, 2, 3, 4}), {1, 2, 3, 4})
    lu.assertEquals(candidate({4, 3, 2, 1}), {4, 4, 4, 4})
    lu.assertEquals(candidate({3, 2, 3, 100, 3}), {3, 3, 3, 100, 100})
end

os.exit(lu.LuaUnit.run())