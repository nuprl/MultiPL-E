-- You are given a list of integers.
-- Write a function next_smallest() that returns the 2nd smallest element of the list.
-- Return None if there is no such element.
-- next_smallest([1, 2, 3, 4, 5]) == 2
-- next_smallest([5, 1, 4, 3, 2]) == 2
-- next_smallest([]) == None
-- next_smallest([1, 1]) == None
local function next_smallest(lst)
  if #lst == 0 then
    return nil
  end
  local smallest = lst[1]
  local second_smallest = nil
  for i = 2, #lst do
    if lst[i] < smallest then
      second_smallest = smallest
      smallest = lst[i]
    elseif lst[i] < second_smallest then
      second_smallest = lst[i]
    end
  end
  return second_smallest
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = next_smallest
    lu.assertEquals(candidate({1, 2, 3, 4, 5}), 2)
    lu.assertEquals(candidate({5, 1, 4, 3, 2}), 2)
    lu.assertEquals(candidate({}), None)
    lu.assertEquals(candidate({1, 1}), None)
    lu.assertEquals(candidate({1, 1, 1, 1, 0}), 1)
    lu.assertEquals(candidate({1, 0^0}), None)
    lu.assertEquals(candidate({-35, 34, 12, -45}), -35)
end

os.exit(lu.LuaUnit.run())