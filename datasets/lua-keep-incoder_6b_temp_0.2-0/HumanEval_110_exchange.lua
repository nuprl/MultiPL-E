-- In this problem, you will implement a function that takes two lists of numbers,
-- and determines whether it is possible to perform an exchange of elements
-- between them to make lst1 a list of only even numbers.
-- There is no limit on the number of exchanged elements between lst1 and lst2.
-- If it is possible to exchange elements between the lst1 and lst2 to make
-- all the elements of lst1 to be even, return "YES".
-- Otherwise, return "NO".
-- For example:
-- exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
-- exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
-- It is assumed that the input lists will be non-empty.
local function exchange(lst1, lst2)
  -- Base case
  if #lst1 == 0 or #lst2 == 0 then
    return "NO"
  end

lu = require('luaunit')

function test_humaneval()
local candidate = exchange
    lu.assertEquals(candidate({1, 2, 3, 4}, {1, 2, 3, 4}), 'YES')
    lu.assertEquals(candidate({1, 2, 3, 4}, {1, 5, 3, 4}), 'NO')
    lu.assertEquals(candidate({1, 2, 3, 4}, {2, 1, 4, 3}), 'YES')
    lu.assertEquals(candidate({5, 7, 3}, {2, 6, 4}), 'YES')
    lu.assertEquals(candidate({5, 7, 3}, {2, 6, 3}), 'NO')
    lu.assertEquals(candidate({3, 2, 6, 1, 8, 9}, {3, 5, 5, 1, 1, 1}), 'NO')
    lu.assertEquals(candidate({100, 200}, {200, 200}), 'YES')
end

os.exit(lu.LuaUnit.run())