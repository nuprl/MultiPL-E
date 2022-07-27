-- Check if in given list of numbers, are any two numbers closer to each other than
-- given threshold.
-- >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
-- False
-- >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
-- True
local function has_close_elements(numbers, threshold)
  local min_distance = math.abs(numbers[1] - numbers[2])
  for i = 2, #numbers do
    local distance = math.abs(numbers[i] - numbers[i - 1])
    if distance < min_distance then
      min_distance = distance
    end
  end
  return min_distance > threshold
end

-- Returns true if given table has any non-nil values.
-- >>> has_non_nil_values({})
-- True
-- >>> has_non_nil_values({'a'})
-- False
-- >>> has_non_nil_values({'a', 'b', 'c'})
-- True

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