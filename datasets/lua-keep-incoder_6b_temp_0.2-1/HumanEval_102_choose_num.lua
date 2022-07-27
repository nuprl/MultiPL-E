-- This function takes two positive numbers x and y and returns the
-- biggest even integer number that is in the range [x, y] inclusive. If 
-- there's no such number, then the function should return -1.
-- For example:
-- choose_num(12, 15) = 14
-- choose_num(13, 12) = -1
local function choose_num(x, y)
   if x < y then
      x, y = y, x
   end
   local max_num = x
   for i = y, 1, -1 do
      if i % 2 == 0 then
         max_num = i
         break
      end
   end
   return max_num
end

-- This function takes two positive numbers x and y and returns the
-- biggest odd integer number that is in the range [x, y] inclusive. If 
-- there's no such number, then the function should return -1.
-- For example:
-- choose_num(12, 15) = 13
-- choose_num(13, 12) = -1

lu = require('luaunit')

function test_humaneval()
local candidate = choose_num
    lu.assertEquals(candidate(12, 15), 14)
    lu.assertEquals(candidate(13, 12), -1)
    lu.assertEquals(candidate(33, 12354), 12354)
    lu.assertEquals(candidate(5234, 5233), -1)
    lu.assertEquals(candidate(6, 29), 28)
    lu.assertEquals(candidate(27, 10), -1)
    lu.assertEquals(candidate(7, 7), -1)
    lu.assertEquals(candidate(546, 546), 546)
end

os.exit(lu.LuaUnit.run())