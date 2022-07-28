-- From a supplied list of numbers (of length at least two) select and return two that are the closest to each
-- other and return them in order (smaller number, larger number).
-- >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
-- (2.0, 2.2)
-- >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
-- (2.0, 2.0)
local function find_closest_elements(numbers)
  local min_diff = math.abs(numbers[1] - numbers[2])
  local min_idx = 1
  local min_val = numbers[1]
  for idx = 2, #numbers do
    local diff = math.abs(numbers[idx] - numbers[min_idx])
    if diff < min_diff then
      min_diff = diff
      min_idx = idx
      min_val = numbers[idx]
    end
  end
  return min_val, min_idx
end

-- Given a table of numbers, return two numbers that are the closest to each
-- other and return them in order (smaller number, larger number).
-- >>> find_closest_elements_table({1.0, 2.0, 3.0, 4.0, 5.0, 2.2})
-- (2.0, 2.2)
-- >>> find_closest_elements_table({1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
-- (2.0, 2.0)

lu = require('luaunit')

function test_humaneval()
local candidate = find_closest_elements
    lu.assertEquals(candidate({1.0, 2.0, 3.9, 4.0, 5.0, 2.2}), {3.9, 4.0})
    lu.assertEquals(candidate({1.0, 2.0, 5.9, 4.0, 5.0}), {5.0, 5.9})
    lu.assertEquals(candidate({1.0, 2.0, 3.0, 4.0, 5.0, 2.2}), {2.0, 2.2})
    lu.assertEquals(candidate({1.0, 2.0, 3.0, 4.0, 5.0, 2.0}), {2.0, 2.0})
    lu.assertEquals(candidate({1.1, 2.2, 3.1, 4.1, 5.1}), {2.2, 3.1})
end

os.exit(lu.LuaUnit.run())