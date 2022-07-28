-- Given an array of integers nums, find the minimum sum of any non-empty sub-array
-- of nums.
-- Example
-- minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
-- minSubArraySum([-1, -2, -3]) == -6
local function minSubArraySum(nums)
  -- Base case
  if #nums == 0 then
    return 0
  end

  -- Find the minimum sum of the first element
  local sum1 = nums[1]
  local min1 = sum1

  -- Find the minimum sum of the remaining elements
  for i = 2, #nums do
    local sum2 = nums[i]
    local min2 = sum2

    -- If the sum of the current element is less than the minimum of the current and previous elements, update the minimum
    if sum1 < min1 then
      min1 = sum1
    end

    -- If the sum of the current element is less than the minimum of the current and previous elements, update the minimum
    if sum2 < min2 then
      min2 = sum2
    end
  end

  return min1
end

-- Given an array of integers nums, find the maximum sum of any non-empty sub-array
-- of nums.
-- Example
-- maxSubArraySum([2, 3, 4, 1, 2, 4]) == 6
-- maxSubArraySum([-1, -2, -3]) == 3

lu = require('luaunit')

function test_humaneval()
local candidate = minSubArraySum
    lu.assertEquals(candidate({2, 3, 4, 1, 2, 4}), 1)
    lu.assertEquals(candidate({-1, -2, -3}), -6)
    lu.assertEquals(candidate({-1, -2, -3, 2, -10}), -14)
    lu.assertEquals(candidate({-9999999999999999}), -9999999999999999)
    lu.assertEquals(candidate({0, 10, 20, 1000000}), 0)
    lu.assertEquals(candidate({-1, -2, -3, 10, -5}), -6)
    lu.assertEquals(candidate({100, -1, -2, -3, 10, -5}), -6)
    lu.assertEquals(candidate({10, 11, 13, 8, 3, 4}), 3)
    lu.assertEquals(candidate({100, -33, 32, -1, 0, -2}), -33)
    lu.assertEquals(candidate({-10}), -10)
    lu.assertEquals(candidate({7}), 7)
    lu.assertEquals(candidate({1, -1}), -1)
end

os.exit(lu.LuaUnit.run())