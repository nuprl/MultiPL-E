-- This function takes a list l and returns a list l' such that
-- l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
-- to the values of the corresponding indicies of l, but sorted.
-- >>> sort_third([1, 2, 3])
-- [1, 2, 3]
-- >>> sort_third([5, 6, 3, 4, 8, 9, 2])
-- [2, 6, 3, 4, 8, 9, 5]
local function sort_third(l)
  local l2 = {}
  for i = 1, #l do
    if i % 3 == 0 then
      table.insert(l2, l[i])
    else
      table.insert(l2, l[i - 1])
    end
  end
  return l2
end

-- This function takes a list l and returns a list l' such that
-- l' is identical to l in the indicies that are not divisible by five, while its values at the indicies that are divisible by five are equal
-- to the values of the corresponding indicies of l, but sorted.
-- >>> sort_fifth([1, 2, 3])
-- [1, 2, 3]
-- >>> sort_fifth([5, 6, 3, 4, 8, 9, 2])
-- [2, 3, 4, 6, 8, 9, 5]

lu = require('luaunit')

function test_humaneval()
local candidate = sort_third
    lu.assertEquals(candidate({5, 6, 3, 4, 8, 9, 2}), {2, 6, 3, 4, 8, 9, 5})
    lu.assertEquals(candidate({5, 8, 3, 4, 6, 9, 2}), {2, 8, 3, 4, 6, 9, 5})
    lu.assertEquals(candidate({5, 6, 9, 4, 8, 3, 2}), {2, 6, 9, 4, 8, 3, 5})
    lu.assertEquals(candidate({5, 6, 3, 4, 8, 9, 2, 1}), {2, 6, 3, 4, 8, 9, 5, 1})
end

os.exit(lu.LuaUnit.run())