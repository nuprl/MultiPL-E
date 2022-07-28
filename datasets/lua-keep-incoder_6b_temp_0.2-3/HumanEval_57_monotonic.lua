-- Return True is list elements are monotonically increasing or decreasing.
-- >>> monotonic([1, 2, 4, 20])
-- True
-- >>> monotonic([1, 20, 4, 10])
-- False
-- >>> monotonic([4, 1, 0, -10])
-- True
local function monotonic(l)
  local i = 1
  local j = 1
  local k = 1
  local monotonic = true -- Default to true
  while i < #l do
    if l[i] < l[j] then
      k = k + 1
      if k < #l and l[k] == l[i] then
        j = k
      else
        monotonic = false
        break
      end
    else
      k = k + 1
      if k < #l and l[k] == l[i] then
        j = k
      else
        monotonic = false
        break
      end
    end
    i = i + 1
  end
  return monotonic
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