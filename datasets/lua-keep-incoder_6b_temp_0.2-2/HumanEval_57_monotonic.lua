-- Return True is list elements are monotonically increasing or decreasing.
-- >>> monotonic([1, 2, 4, 20])
-- True
-- >>> monotonic([1, 20, 4, 10])
-- False
-- >>> monotonic([4, 1, 0, -10])
-- True
local function monotonic(l)
  local i = 1
  local j = #l + 1
  while i <= j do
    local m = i - 1
    local n = j
    while m <= n do
      if l[m] < l[n] then
        local t = l[m]
        l[m] = l[n]
        l[n] = t
      else
        local t = l[m]
        l[m] = l[n]
        l[n] = t
      end
      m = m + 1
      n = n - 1
    end
    i = i + 1
    j = j - 1
  end
  return l[1] < l[2]
end


lu = require('luaunit')

function test_humaneval()
local candidate = monotonic
    lu.assertEquals(candidate({1, 2, 4, 10}), true)
    lu.assertEquals(candidate({1, 2, 4, 20}), true)
    lu.assertEquals(candidate({1, 20, 4, 10}), false)
    lu.assertEquals(candidate({4, 1, 0, -10}), true)
    lu.assertEquals(candidate({4, 1, 1, 0}), true)
    lu.assertEquals(candidate({1, 2, 3, 2, 5, 60}), false)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 60}), true)
    lu.assertEquals(candidate({9, 9, 9, 9}), true)
end

os.exit(lu.LuaUnit.run())