-- Given an array of integers nums, find the minimum sum of any non-empty sub-array
-- of nums.
-- Example
-- minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
-- minSubArraySum([-1, -2, -3]) == -6
local function minSubArraySum(nums)
  local min = math.huge
  local sum = 0
  for i = 1, #nums do
    sum = sum + nums[i]
    if sum < min then
      min = sum
    end
    if sum > 0 then
      sum = 0
    end
  end
  return min
end

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