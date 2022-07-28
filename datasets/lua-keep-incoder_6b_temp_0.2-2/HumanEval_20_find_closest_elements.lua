-- From a supplied list of numbers (of length at least two) select and return two that are the closest to each
-- other and return them in order (smaller number, larger number).
-- >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
-- (2.0, 2.2)
-- >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
-- (2.0, 2.0)
local function find_closest_elements(numbers)
  local smallest, largest = numbers[1], numbers[#numbers]
  for i = 2, #numbers do
    local current = numbers[i]
    if current < smallest then
      smallest = current
    elseif current > largest then
      largest = current
    end
  end
  return smallest, largest
end


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