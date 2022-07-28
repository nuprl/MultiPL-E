-- Check if in given list of numbers, are any two numbers closer to each other than
-- given threshold.
-- >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
-- False
-- >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
-- True
local function has_close_elements(numbers, threshold)
  local close = nil
  for _, value in pairs(numbers) do
    local close = close or false
    if abs(value - threshold) < threshold then
      close = true
    end
  end
  return close
end


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