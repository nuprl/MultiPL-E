-- Given list of numbers (of at least two elements), apply a linear transform to that list,
-- such that the smallest number will become 0 and the largest will become 1
-- >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
-- [0.0, 0.25, 0.5, 0.75, 1.0]
local function rescale_to_unit(numbers)
  local min = math.min(numbers)
  local max = math.max(numbers)
  local scale = (max - min) / (#numbers - 1)
  local result = {}
  for i = 1, #numbers do
    result[i] = min + scale * (numbers[i] - min)
  end
  return result
end

-- Given a table of numbers (of at least two elements), apply a linear transform to that table,
-- such that the smallest number will become 0 and the largest will become 1
-- >>> rescale_to_unit({1.0, 2.0, 3.0, 4.0, 5.0})
-- [0.0, 0.25, 0.5, 0.75, 1.0]

lu = require('luaunit')

function test_humaneval()
local candidate = rescale_to_unit
    lu.assertEquals(candidate({2.0, 49.9}), {0.0, 1.0})
    lu.assertEquals(candidate({100.0, 49.9}), {1.0, 0.0})
    lu.assertEquals(candidate({1.0, 2.0, 3.0, 4.0, 5.0}), {0.0, 0.25, 0.5, 0.75, 1.0})
    lu.assertEquals(candidate({2.0, 1.0, 5.0, 3.0, 4.0}), {0.25, 0.0, 1.0, 0.5, 0.75})
    lu.assertEquals(candidate({12.0, 11.0, 15.0, 13.0, 14.0}), {0.25, 0.0, 1.0, 0.5, 0.75})
end

os.exit(lu.LuaUnit.run())