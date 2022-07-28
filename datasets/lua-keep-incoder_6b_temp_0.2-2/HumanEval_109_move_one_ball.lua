-- We have an array 'arr' of N integers arr[1], arr[2], ..., arr[N].The
-- numbers in the array will be randomly ordered. Your task is to determine if
-- it is possible to get an array sorted in non-decreasing order by performing 
-- the following operation on the given array:
-- You are allowed to perform right shift operation any number of times.
-- One right shift operation means shifting all elements of the array by one
-- position in the right direction. The last element of the array will be moved to
-- the starting position in the array i.e. 0th index. 
-- If it is possible to obtain the sorted array by performing the above operation
-- then return True else return False.
-- If the given array is empty then return True.
-- Note: The given list is guaranteed to have unique elements.
-- For Example:
-- move_one_ball([3, 4, 5, 1, 2])==>True
-- Explanation: By performin 2 right shift operations, non-decreasing order can
-- be achieved for the given array.
-- move_one_ball([3, 5, 4, 1, 2])==>False
-- Explanation:It is not possible to get non-decreasing order for the given
-- array by performing any number of right shift operations.
local function move_one_ball(arr)
  -- Base case
  if #arr == 0 then
    return true
  end
  -- If array is empty then return true
  if #arr == 1 then
    return true
  end
  -- If array has only one element then return true
  if #arr == 2 then
    return true
  end
  -- If array has two elements then perform right shift operation on first element
  -- and check if it is non-decreasing
  if #arr > 2 then
    local temp = arr[1]
    arr[1] = arr[2]
    arr[2] = temp
    return not is_non_decreasing(arr)
  end
  -- If array has three elements then perform right shift operation on first two
  -- and check if it is non-decreasing
  if #arr > 3 then
    local temp = arr[1]
    arr[1] = arr[2]
    arr[2] = arr[3]
    return not is_non_decreasing(arr)
  end
  -- If array has four elements then perform right shift operation on first three
  -- and check if it is non-decreasing
  if #arr > 4 then
    local temp = arr[1]
    arr[1] = arr[2]
    arr[2] = arr[3]
    arr[3] = arr[4]
    return not is_non_decreasing(arr)
  end
  -- If array has five elements then perform right shift operation on first four
  -- and check if it is non-decreasing
  if #arr > 5 then
    local temp = arr[1]
    arr[1] = arr[2]
    arr[2] = arr[3]
    arr[3] = arr[4]
    arr[4] = arr[5]
    return not is_non_decreasing(arr)
  end
  -- If array has six elements then perform right shift operation on first five
  -- and check if it is non-decreasing
  if #arr > 6 then
    local temp = arr[1]
    arr[1] = arr[2]
    arr[2] = arr[3]
    arr[3] = arr[4]
    arr[4] = arr[5]
    arr[5] = arr[6]
    return not is_non_decreasing(arr)
  end
  -- If array has seven elements then perform right shift operation on first six
  -- and check if it is non-decreasing
  if #arr > 7 then
    local temp = arr[1]
    arr[1] = arr[2]
    arr[2] = arr[3]
    arr[3] = arr[4]
    arr[4] = arr[5]
    arr[5] = arr[6]
    arr[6] = arr[7]
    return not is_non_decreasing(arr)
  end
  -- If array has eight elements 

lu = require('luaunit')

function test_humaneval()
local candidate = move_one_ball
    lu.assertEquals(candidate({3, 4, 5, 1, 2}), true)
    lu.assertEquals(candidate({3, 5, 10, 1, 2}), true)
    lu.assertEquals(candidate({4, 3, 1, 2}), false)
    lu.assertEquals(candidate({3, 5, 4, 1, 2}), false)
    lu.assertEquals(candidate({}), true)
end

os.exit(lu.LuaUnit.run())