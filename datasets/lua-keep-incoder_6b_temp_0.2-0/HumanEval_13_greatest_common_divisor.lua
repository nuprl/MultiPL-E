-- Return a greatest common divisor of two integers a and b
-- >>> greatest_common_divisor(3, 5)
-- 1
-- >>> greatest_common_divisor(25, 15)
-- 5
local function greatest_common_divisor(a, b)
  if a == 0 then return b end
  if b == 0 then return a end
  if a > b then return greatest_common_divisor(b, a) end
  local c = a
  while c > 0 do
    local d = b
    while d > 0 do
      if c % d == 0 then return d end
      d = d - 1
    end
    c = c - 1
  end
  return a
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