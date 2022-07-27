-- Return a greatest common divisor of two integers a and b
-- >>> greatest_common_divisor(3, 5)
-- 1
-- >>> greatest_common_divisor(25, 15)
-- 5
local function greatest_common_divisor(a, b)
  if a == 0 then return b end
  if b == 0 then return a end
  if a > b then a, b = b, a end
  local i = 1
  while i <= a do
    local m = math.floor((a + b) / 2)
    if m % a == 0 and m % b == 0 then
      return m
    end
    i = i + 1
  end
  return b
end


lu = require('luaunit')

function test_humaneval()
local candidate = greatest_common_divisor
    lu.assertEquals(candidate(3, 7), 1)
    lu.assertEquals(candidate(10, 15), 5)
    lu.assertEquals(candidate(49, 14), 7)
    lu.assertEquals(candidate(144, 60), 12)
end

os.exit(lu.LuaUnit.run())