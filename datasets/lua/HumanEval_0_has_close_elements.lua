-- Check if in given list of numbers, are any two numbers closer to each other than
-- given threshold.
-- >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
-- False
-- >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
-- True
local function has_close_elements(numbers, threshold)
  local sorted_numbers = utils.sort(numbers)
  local last_number = sorted_numbers[1]
  for i = 2, #sorted_numbers do
    local current_number = sorted_numbers[i]
    if math.abs(current_number - last_number) < threshold then
      return true
    end
    last_number = current_number
  end
  return false
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = has_close_elements
    lu.assertEquals(candidate({1.0, 2.0, 3.9, 4.0, 5.0, 2.2}, 0.3), true)
    lu.assertEquals(candidate({1.0, 2.0, 3.9, 4.0, 5.0, 2.2}, 0.05), false)
    lu.assertEquals(candidate({1.0, 2.0, 5.9, 4.0, 5.0}, 0.95), true)
    lu.assertEquals(candidate({1.0, 2.0, 5.9, 4.0, 5.0}, 0.8), false)
    lu.assertEquals(candidate({1.0, 2.0, 3.0, 4.0, 5.0, 2.0}, 0.1), true)
    lu.assertEquals(candidate({1.1, 2.2, 3.1, 4.1, 5.1}, 1.0), true)
    lu.assertEquals(candidate({1.1, 2.2, 3.1, 4.1, 5.1}, 0.5), false)
end

os.exit(lu.LuaUnit.run())