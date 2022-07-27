-- Given a list of numbers, return whether or not they are sorted
-- in ascending order. If list has more than 1 duplicate of the same
-- number, return False. Assume no negative numbers and only integers.
-- Examples
-- is_sorted([5]) ➞ True
-- is_sorted([1, 2, 3, 4, 5]) ➞ True
-- is_sorted([1, 3, 2, 4, 5]) ➞ False
-- is_sorted([1, 2, 3, 4, 5, 6]) ➞ True
-- is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ True
-- is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ False
-- is_sorted([1, 2, 2, 3, 3, 4]) ➞ True
-- is_sorted([1, 2, 2, 2, 3, 4]) ➞ False
local function is_sorted(lst)
  -- Base case
  if #lst == 1 then
    return lst[1] == lst[1]
  end
  -- If there are more than 1 duplicate, return false
  if #lst:len() > 1 then
    return false
  end
  -- If there are only 1 duplicate, return true
  if #lst:len() == 1 then
    return lst[1] == lst[1]
  end
  -- If there are only 2 duplicates, return true
  if #lst:len() == 2 then
    return lst[1] == lst[2] and lst[1] == lst[1]
  end
  -- If there are more than 2 duplicates, return false
  return false
end

-- Given a list of numbers, return whether or not they are sorted
-- in descending order. If list has more than 1 duplicate of the same
-- number, return False. Assume no negative numbers and only integers.
-- Examples
-- is_sorted([5]) ➞ False
-- is_sorted([1, 2, 3, 4, 5]) ➞ True
-- is_sorted([1, 3, 2, 4, 5]) ➞ False
-- is_sorted([1, 2, 3, 4, 5, 6]) ➞ False
-- is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ True
-- is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ False
-- is_sorted([1, 2, 2, 3, 3, 4]) ➞ False
-- is_sorted([1, 2, 2, 2, 3, 4]) ➞ True
-- is_sorted([1, 2, 2, 2, 3, 3]) ➞ False

lu = require('luaunit')

function test_humaneval()
local candidate = is_sorted
    lu.assertEquals(candidate({5}), true)
    lu.assertEquals(candidate({1, 2, 3, 4, 5}), true)
    lu.assertEquals(candidate({1, 3, 2, 4, 5}), false)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}), true)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7}), true)
    lu.assertEquals(candidate({1, 3, 2, 4, 5, 6, 7}), false)
    lu.assertEquals(candidate({}), true)
    lu.assertEquals(candidate({1}), true)
    lu.assertEquals(candidate({3, 2, 1}), false)
    lu.assertEquals(candidate({1, 2, 2, 2, 3, 4}), false)
    lu.assertEquals(candidate({1, 2, 3, 3, 3, 4}), false)
    lu.assertEquals(candidate({1, 2, 2, 3, 3, 4}), true)
    lu.assertEquals(candidate({1, 2, 3, 4}), true)
end

os.exit(lu.LuaUnit.run())