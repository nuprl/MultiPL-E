-- Return True is list elements are monotonically increasing or decreasing.
-- >>> monotonic([1, 2, 4, 20])
-- True
-- >>> monotonic([1, 20, 4, 10])
-- False
-- >>> monotonic([4, 1, 0, -10])
-- True
local function monotonic(l)
  local i = 1
  local last = l[1]
  for i = 2, #l do
    if l[i] ~= last then
      return false
    end
    last = l[i]
  end
  return true
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