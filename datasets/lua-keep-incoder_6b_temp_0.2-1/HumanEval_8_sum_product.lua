-- For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
-- Empty sum should be equal to 0 and empty product should be equal to 1.
-- >>> sum_product([])
-- (0, 1)
-- >>> sum_product([1, 2, 3, 4])
-- (10, 24)
local function sum_product(numbers)
  if #numbers == 0 then
    return 0, 0
  end
  local sum = 0
  local product = 1
  for i = 1, #numbers do
    sum = sum + numbers[i]
    product = product * numbers[i]
  end
  return sum, product
end


lu = require('luaunit')

function test_humaneval()
local candidate = sum_product
    lu.assertEquals(candidate({}), {0, 1})
    lu.assertEquals(candidate({1, 1, 1}), {3, 1})
    lu.assertEquals(candidate({100, 0}), {100, 0})
    lu.assertEquals(candidate({3, 5, 7}), {15, 105})
    lu.assertEquals(candidate({10}), {10, 10})
end

os.exit(lu.LuaUnit.run())