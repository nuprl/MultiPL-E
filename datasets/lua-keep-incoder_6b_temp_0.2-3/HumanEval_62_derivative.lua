-- xs represent coefficients of a polynomial.
-- xs[0] + xs[1] * x + xs[2] * x^2 + ....
-- Return derivative of this polynomial in the same form.
-- >>> derivative([3, 1, 2, 4, 5])
-- [1, 4, 12, 20]
-- >>> derivative([1, 2, 3])
-- [2, 6]
local function derivative(xs)
  local n = 1
  local d = 0
  for i = 1, #xs do
    local x = xs[i]
    local y = x * x
    local z = y * x
    local a = z * x
    local b = z * y
    local c = b * x
    local d = b * y
    local e = a * x
    local f = a * y
    local g = e * x
    local h = e * y
    d = d + g
    e = e + h
    f = f + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h + g
    g = g + h
    h = h

lu = require('luaunit')

function test_humaneval()
local candidate = derivative
    lu.assertEquals(candidate({3, 1, 2, 4, 5}), {1, 4, 12, 20})
    lu.assertEquals(candidate({1, 2, 3}), {2, 6})
    lu.assertEquals(candidate({3, 2, 1}), {2, 2})
    lu.assertEquals(candidate({3, 2, 1, 0, 4}), {2, 2, 0, 16})
    lu.assertEquals(candidate({1}), {})
end

os.exit(lu.LuaUnit.run())