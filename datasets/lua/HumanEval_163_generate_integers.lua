-- Given two positive integers a and b, return the even digits between a
-- and b, in ascending order.
-- For example:
-- generate_integers(2, 8) => [2, 4, 6, 8]
-- generate_integers(8, 2) => [2, 4, 6, 8]
-- generate_integers(10, 14) => []
local function generate_integers(a, b)
  local result = {}
  for i = a, b do
    if i % 2 == 0 then
      table.insert(result, i)
    end
  end
  return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = generate_integers
    lu.assertEquals(candidate(2, 10), {2, 4, 6, 8})
    lu.assertEquals(candidate(10, 2), {2, 4, 6, 8})
    lu.assertEquals(candidate(132, 2), {2, 4, 6, 8})
    lu.assertEquals(candidate(17, 89), {})
end

os.exit(lu.LuaUnit.run())