-- Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
-- Examples
-- solution([5, 8, 7, 1]) ==> 12
-- solution([3, 3, 3, 3, 3]) ==> 9
-- solution([30, 13, 24, 321]) ==>0
local function solution(lst)
  local sum = 0
  for i = 1, #lst do
    if i % 2 == 0 then
      sum = sum + lst[i]
    end
  end
  return sum
end

-- Given a non-empty list of integers, return a list of all permutations of elements in the list. 
-- Each element in the result should appear only once.
-- Examples
-- permutations([5, 8, 7, 1]) ==> [[5], [8, 7], [1, 5], [8, 1, 7], [7, 1], [1, 7, 5]]
-- permutations([3, 3, 3, 3, 3]) ==> [[3, 3, 3], [3, 3], [3, 3, 3, 3]]
-- permutations([30, 13, 24, 321]) ==> [[30, 13], [13, 24], [24, 31], [31, 30, 13], [13, 21, 24], [24, 21, 31], [31, 13, 24], [13, 21, 31, 24], [24, 21, 13, 31], [31, 13, 21, 24], [13, 21, 13, 24, 31], [24, 21, 13, 31, 31], [31, 13, 21, 24, 31], [13, 21, 24, 31, 13], [24, 21, 31, 13, 31], [31, 13, 21, 24, 31, 13], [13, 21, 24, 31, 13, 31], [31, 13, 21, 24, 31, 13, 31], [13, 21, 24, 31, 13, 31, 31], [31, 13, 21, 24, 31, 13, 31, 31]]

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