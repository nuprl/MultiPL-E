-- Return True if all numbers in the list l are below threshold t.
-- >>> below_threshold([1, 2, 4, 10], 100)
-- True
-- >>> below_threshold([1, 20, 4, 10], 5)
-- False
local function below_threshold(l, t)
  local n = 1
  for _, v in ipairs(l) do
    if v < t then
      return false
    end
    n = n * 10 + v
  end
  return n == t
end

-- Returns true if all numbers in the list l are above threshold t.
-- >>> above_threshold([1, 2, 4, 10], 100)
-- True
-- >>> above_threshold([1, 20, 4, 10], 5)
-- False

lu = require('luaunit')

function test_humaneval()
local candidate = below_threshold
    lu.assertEquals(candidate({1, 2, 4, 10}, 100), true)
    lu.assertEquals(candidate({1, 20, 4, 10}, 5), false)
    lu.assertEquals(candidate({1, 20, 4, 10}, 21), true)
    lu.assertEquals(candidate({1, 20, 4, 10}, 22), true)
    lu.assertEquals(candidate({1, 8, 4, 10}, 11), true)
    lu.assertEquals(candidate({1, 8, 4, 10}, 10), false)
end

os.exit(lu.LuaUnit.run())