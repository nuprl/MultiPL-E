-- You are given a list of integers.
-- Write a function next_smallest() that returns the 2nd smallest element of the list.
-- Return None if there is no such element.
-- next_smallest([1, 2, 3, 4, 5]) == 2
-- next_smallest([5, 1, 4, 3, 2]) == 2
-- next_smallest([]) == None
-- next_smallest([1, 1]) == None
local function next_smallest(lst)
  local smallest = lst[1]
  local i = 2
  while i < #lst do
    if lst[i] < smallest then
      smallest = lst[i]
    end
    i = i + 1
  end
  return smallest
end

-- Write a function next_largest() that returns the 2nd largest element of the list.
-- Return None if there is no such element.
-- next_largest([1, 2, 3, 4, 5]) == 5
-- next_largest([5, 1, 4, 3, 2]) == 5
-- next_largest([]) == None
-- next_largest([1, 1]) == None

lu = require('luaunit')

function test_humaneval()
local candidate = next_smallest
    lu.assertEquals(candidate({1, 2, 3, 4, 5}), 2)
    lu.assertEquals(candidate({5, 1, 4, 3, 2}), 2)
    lu.assertEquals(candidate({}), None)
    lu.assertEquals(candidate({1, 1}), None)
    lu.assertEquals(candidate({1, 1, 1, 1, 0}), 1)
    lu.assertEquals(candidate({1, 1}), None)
    lu.assertEquals(candidate({-35, 34, 12, -45}), -35)
end

os.exit(lu.LuaUnit.run())