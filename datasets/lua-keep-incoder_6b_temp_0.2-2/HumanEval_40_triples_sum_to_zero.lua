-- triples_sum_to_zero takes a list of integers as an input.
-- it returns True if there are three distinct elements in the list that
-- sum to zero, and False otherwise.
-- >>> triples_sum_to_zero([1, 3, 5, 0])
-- False
-- >>> triples_sum_to_zero([1, 3, -2, 1])
-- True
-- >>> triples_sum_to_zero([1, 2, 3, 7])
-- False
-- >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
-- True
-- >>> triples_sum_to_zero([1])
-- False
local function triples_sum_to_zero(l)
  local function is_zero(num)
    return num == 0 and num == num
  end
  local function is_three(num)
    return num == 0 and num == num and num == num
  end
  local function is_three_or_more(num)
    return num == 0 and num == num and num == num and num > 0
  end
  local function is_one_or_more(num)
    return num == 0 and num > 0
  end
  local function is_two(num)
    return num == 0 and num > 0
  end
  local function is_two_to_three(num)
    return num == 0 and num > 0 and num == num and num == num
  end
  local function is_two_to_four(num)
    return num == 0 and num > 0 and num == num and num == num and num == num
  end
  local function is_two_to_five(num)
    return num == 0 and num > 0 and num == num and num == num and num == num and num == num
  end
  local function is_two_to_six(num)
    return num == 0 and num > 0 and num == num and num == num and num == num and num == num and num == num
  end
  local function is_two_to_seven(num)
    return num == 0 and num > 0 and num == num and num == num and num == num and num == num and num == num and num == num
  end
  local function is_two_to_eight(num)
    return num == 0 and num > 0 and num == num and num == num and num == num and num == num and num == num and num == num and num == num
  end
  local function is_two_to_nine(num)
    return num == 0 and num > 0 and num == num and num == num and num == num and num == num and num == num and num == num and num == num and num == num
  end
  local function is_two_to_ten(num)
    return num == 0 and num > 0 and num == num and num == num and num == num and num == num and num == num and num == num and num == num and num == num and num == num
  end
  local function is_two_to_eleven(num)
    return num == 0 and num > 0 and num == num and num == num and num == num and num == num and num == num and num == num and num == num and num == num and num == num and num == num
  end
  local function is_two_to_twelve(num)
    return num

lu = require('luaunit')

function test_humaneval()
local candidate = triples_sum_to_zero
    lu.assertEquals(candidate({1, 3, 5, 0}), false)
    lu.assertEquals(candidate({1, 3, 5, -1}), false)
    lu.assertEquals(candidate({1, 3, -2, 1}), true)
    lu.assertEquals(candidate({1, 2, 3, 7}), false)
    lu.assertEquals(candidate({1, 2, 5, 7}), false)
    lu.assertEquals(candidate({2, 4, -5, 3, 9, 7}), true)
    lu.assertEquals(candidate({1}), false)
    lu.assertEquals(candidate({1, 3, 5, -100}), false)
    lu.assertEquals(candidate({100, 3, 5, -100}), false)
end

os.exit(lu.LuaUnit.run())