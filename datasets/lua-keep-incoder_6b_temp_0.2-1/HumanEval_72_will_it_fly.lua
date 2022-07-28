-- Write a function that returns True if the object q will fly, and False otherwise.
-- The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w.
-- Example:
-- will_it_fly([1, 2], 5) ➞ False 
-- # 1+2 is less than the maximum possible weight, but it's unbalanced.
-- will_it_fly([3, 2, 3], 1) ➞ False
-- # it's balanced, but 3+2+3 is more than the maximum possible weight.
-- will_it_fly([3, 2, 3], 9) ➞ True
-- # 3+2+3 is less than the maximum possible weight, and it's balanced.
-- will_it_fly([3], 5) ➞ True
-- # 3 is less than the maximum possible weight, and it's balanced.
local function will_it_fly(q, w)
   if #q == 0 then
      return true
   end
   local sum = 0
   for i = 1, #q do
      sum = sum + q[i]
   end
   return sum <= w
end

-- Write a function that returns True if the object q will fly, and False otherwise.
-- The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w.
-- Example:
-- will_it_fly([1, 2], 5) ➞ False 
-- # 1+2 is less than the maximum possible weight, but it's unbalanced.
-- will_it_fly([3, 2, 3], 1) ➞ False
-- # it's balanced, but 3+2+3 is more than the maximum possible weight.
-- will_it_fly([3, 2, 3], 9) ➞ True
-- # 3+2+3 is less than the maximum possible weight, and it's balanced.
-- will_it_fly([3], 5) ➞ True
-- # 3 is less than the maximum possible weight, and it's balanced.

lu = require('luaunit')

function test_humaneval()
local candidate = will_it_fly
    lu.assertEquals(candidate({3, 2, 3}, 9), true)
    lu.assertEquals(candidate({1, 2}, 5), false)
    lu.assertEquals(candidate({3}, 5), true)
    lu.assertEquals(candidate({3, 2, 3}, 1), false)
    lu.assertEquals(candidate({1, 2, 3}, 6), false)
    lu.assertEquals(candidate({5}, 5), true)
end

os.exit(lu.LuaUnit.run())