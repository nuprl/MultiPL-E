-- From a supplied list of numbers (of length at least two) select and return two that are the closest to each
-- other and return them in order (smaller number, larger number).
-- >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
-- (2.0, 2.2)
-- >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
-- (2.0, 2.0)
local function find_closest_elements(numbers)
  local smallest_distance = nil
  local smallest_number = nil
  local second_smallest_number = nil
  for _, number in ipairs(numbers) do
    local distance = math.abs(number - smallest_number)
    if smallest_distance == nil then
      smallest_distance = distance
      smallest_number = number
      second_smallest_number = number
    elseif smallest_distance > distance then
      smallest_distance = distance
      smallest_number = number
      second_smallest_number = number
    end
  end
  return smallest_number, second_smallest_number
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