-- From a supplied list of numbers (of length at least two) select and return two that are the closest to each
-- other and return them in order (smaller number, larger number).
-- >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
-- (2.0, 2.2)
-- >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
-- (2.0, 2.0)
local function find_closest_elements(numbers)
  local smallest_number = numbers[1]
  local largest_number = numbers[1]
  for _, number in ipairs(numbers) do
    if number < smallest_number then
      smallest_number = number
    end
    if number > largest_number then
      largest_number = number
    end
  end
  return smallest_number, largest_number
end
-- Unit tests below

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