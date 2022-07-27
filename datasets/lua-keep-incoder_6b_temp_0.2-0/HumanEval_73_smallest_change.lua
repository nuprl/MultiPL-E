-- Given an array arr of integers, find the minimum number of elements that
-- need to be changed to make the array palindromic. A palindromic array is an array that
-- is read the same backwards and forwards. In one change, you can change one element to any other element.
-- For example:
-- smallest_change([1,2,3,5,4,7,9,6]) == 4
-- smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
-- smallest_change([1, 2, 3, 2, 1]) == 0
local function smallest_change(arr)
  -- Base case
  if #arr == 1 then
    return 1
  end

  -- Find the minimum number of changes that need to be made to make the array palindromic
  local min_changes = math.min(#arr, #arr - 1)

  -- Find the minimum number of elements that need to be changed to make the array palindromic
  for i = 1, #arr - 1 do
    local changes = min_changes - 1
    local change = arr[i]
    local j = i - 1
    while j >= 0 and arr[j] == change do
      j = j - 1
      changes = changes - 1
    end
    if changes <= 0 then
      min_changes = changes
    end
  end

  return min_changes
end

-- Given an array arr of integers, find the maximum number that needs to be changed to make the
-- array palindromic. A palindromic array is an array that is read the same backwards and forwards.
-- In one change, you can change one element to any other element.
-- For example:
-- max_change([1,2,3,5,4,7,9,6]) == 9
-- max_change([1, 2, 3, 4, 3, 2, 2]) == 6
-- max_change([1, 2, 3, 2, 1]) == 3

lu = require('luaunit')

function test_humaneval()
local candidate = smallest_change
    lu.assertEquals(candidate({1, 2, 3, 5, 4, 7, 9, 6}), 4)
    lu.assertEquals(candidate({1, 2, 3, 4, 3, 2, 2}), 1)
    lu.assertEquals(candidate({1, 4, 2}), 1)
    lu.assertEquals(candidate({1, 4, 4, 2}), 1)
    lu.assertEquals(candidate({1, 2, 3, 2, 1}), 0)
    lu.assertEquals(candidate({3, 1, 1, 3}), 0)
    lu.assertEquals(candidate({1}), 0)
    lu.assertEquals(candidate({0, 1}), 1)
end

os.exit(lu.LuaUnit.run())