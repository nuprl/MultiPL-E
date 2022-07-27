-- Write a function which sorts the given list of integers
-- in ascending order according to the sum of their digits.
-- Note: if there are several items with similar sum of their digits,
-- order them based on their index in original list.
-- For example:
-- >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
-- >>> order_by_points([]) == []
local function order_by_points(nums)
  local nums_sorted = {}
  local index = 1
  for i = 1, #nums do
    local num = nums[i]
    local digits = math.floor(math.log(num) / math.log(10))
    local sum_digits = math.fmod(num, math.pow(10, digits))
    local sum_digits_index = #nums_sorted
    for j = 1, digits do
      sum_digits_index = sum_digits_index + 1
      table.insert(nums_sorted, 0)
    end
    table.insert(nums_sorted, sum_digits_index)
  end
  table.sort(nums_sorted, function(a, b)
    return nums[a] - nums[b]
  end)
  return table.concat(nums_sorted)
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