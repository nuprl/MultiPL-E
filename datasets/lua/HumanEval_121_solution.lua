-- Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
-- Examples
-- solution([5, 8, 7, 1]) ==> 12
-- solution([3, 3, 3, 3, 3]) ==> 9
-- solution([30, 13, 24, 321]) ==>0
local function solution(lst)
  local sum = 0
  for i = 1, #lst, 2 do
    if lst[i] % 2 == 1 then
      sum = sum + lst[i]
    end
  end
  return sum
end
-- Unit tests below

lu = require('luaunit')

function test_humaneval()
local candidate = solution
    lu.assertEquals(candidate({5, 8, 7, 1}), 12)
    lu.assertEquals(candidate({3, 3, 3, 3, 3}), 9)
    lu.assertEquals(candidate({30, 13, 24, 321}), 0)
    lu.assertEquals(candidate({5, 9}), 5)
    lu.assertEquals(candidate({2, 4, 8}), 0)
    lu.assertEquals(candidate({30, 13, 23, 32}), 23)
    lu.assertEquals(candidate({3, 13, 2, 9}), 3)
end

os.exit(lu.LuaUnit.run())