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

  -- Find the minimum number of changes that must be made to make the array palindromic
  local changes = #arr
  local min_changes = math.min(changes, #arr)

  -- Find the minimum number of changes that must be made to make the array palindromic
  -- by removing one element from the array
  for i = 1, min_changes do
    local element = arr[i]
    local j = i - 1
    local k = i + 1

    -- Find the minimum number of changes that must be made to make the array palindromic
    -- by removing one element from the array
    while j >= 0 and k < #arr do
      local next_element = arr[j]
      local next_next_element = arr[k]

      -- If the element to be removed is smaller than the element to be added
      -- then we can remove one element from the array
      if element < next_element then
        arr[j] = next_element
        j = j - 1
      else
        arr[k] = next_element
        k = k + 1
      end
    end
  end

  -- Return the minimum number of changes that must be made to make the array palindromic
  return min_changes
end


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