-- Your task is to implement a function that will simplify the expression
-- x * n. The function returns True if x * n evaluates to a whole number and False
-- otherwise. Both x and n, are string representation of a fraction, and have the following format,
-- <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
-- You can assume that x, and n are valid fractions, and do not have zero as denominator.
-- simplify("1/5", "5/1") = True
-- simplify("1/6", "2/1") = False
-- simplify("7/10", "10/2") = False
local function simplify(x, n)
  local x_numerator, x_denominator = x:match("(%d+)/(%d+)")
  local n_numerator, n_denominator = n:match("(%d+)/(%d+)")
  local x_numerator, x_denominator = tonumber(x_numerator), tonumber(x_denominator)
  local n_numerator, n_denominator = tonumber(n_numerator), tonumber(n_denominator)
  local x_numerator_new, x_denominator_new = x_numerator * n_denominator, x_denominator * n_numerator
  local n_numerator_new, n_denominator_new = n_numerator * x_denominator, n_denominator * x_numerator
  if x_numerator_new == n_numerator_new then
    return true
  else
    return false
  end
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = simplify
    lu.assertEquals(candidate('1/5', '5/1'), true)
    lu.assertEquals(candidate('1/6', '2/1'), false)
    lu.assertEquals(candidate('5/1', '3/1'), true)
    lu.assertEquals(candidate('7/10', '10/2'), false)
    lu.assertEquals(candidate('2/10', '50/10'), true)
    lu.assertEquals(candidate('7/2', '4/2'), true)
    lu.assertEquals(candidate('11/6', '6/1'), true)
    lu.assertEquals(candidate('2/3', '5/2'), false)
    lu.assertEquals(candidate('5/2', '3/5'), false)
    lu.assertEquals(candidate('2/4', '8/4'), true)
    lu.assertEquals(candidate('2/4', '4/2'), true)
    lu.assertEquals(candidate('1/5', '5/1'), true)
    lu.assertEquals(candidate('1/5', '1/5'), false)
end

os.exit(lu.LuaUnit.run())