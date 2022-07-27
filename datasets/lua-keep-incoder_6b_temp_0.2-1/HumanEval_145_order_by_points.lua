-- Write a function which sorts the given list of integers
-- in ascending order according to the sum of their digits.
-- Note: if there are several items with similar sum of their digits,
-- order them based on their index in original list.
-- For example:
-- >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
-- >>> order_by_points([]) == []
local function order_by_points(nums)
  local sums = {}
  for i = 1, #nums do
    local sum = 0
    for j = 1, 10 do
      sum = sum + nums[i]:byte(j) * j
    end
    sums[sum] = sums[sum] + 1
  end
  local sorted_sums = pairs(sums)
  table.sort(sorted_sums)
  local results = {}
  for _, sum in sorted_sums do
    table.insert(results, sum)
  end
  return results
end

-- Write a function which sorts the given list of integers
-- in descending order according to the sum of their digits.
-- Note: if there are several items with similar sum of their digits,
-- order them based on their index in original list.
-- For example:
-- >>> order_by_points_reverse([1, 11, -1, -11, -12]) == [-12, -11, -1, 1, 11]
-- >>> order_by_points_reverse([]) == []

lu = require('luaunit')

function test_humaneval()
local candidate = order_by_points
    lu.assertEquals(candidate({1, 11, -1, -11, -12}), {-1, -11, 1, -12, 11})
    lu.assertEquals(candidate({1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46}), {0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457})
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({1, -11, -32, 43, 54, -98, 2, -3}), {-3, -32, -98, -11, 1, 2, 43, 54})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}), {1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9})
    lu.assertEquals(candidate({0, 6, 6, -76, -21, 23, 4}), {-76, -21, 0, 4, 23, 6, 6})
end

os.exit(lu.LuaUnit.run())