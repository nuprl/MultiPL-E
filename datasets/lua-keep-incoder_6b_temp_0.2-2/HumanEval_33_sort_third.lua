-- This function takes a list l and returns a list l' such that
-- l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
-- to the values of the corresponding indicies of l, but sorted.
-- >>> sort_third([1, 2, 3])
-- [1, 2, 3]
-- >>> sort_third([5, 6, 3, 4, 8, 9, 2])
-- [2, 6, 3, 4, 8, 9, 5]
local function sort_third(l)
  local l2 = {}
  local i = 1
  while i <= #l do
    local j = 1
    while j <= #l do
      if i % 3 == j % 3 then
        l2[i] = l[j]
        j = j + 1
      else
        i = i + 1
      end
    end
    i = i + 1
  end
  return l2
end

-- This function takes a list l and returns a list l' such that
-- l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
-- to the values of the corresponding indicies of l, but sorted.
-- >>> sort_third([1, 2, 3])
-- [1, 2, 3]
-- >>> sort_third([5, 6, 3, 4, 8, 9, 2])
-- [2, 6, 3, 4, 8, 9, 5]

lu = require('luaunit')

function test_humaneval()
local candidate = sort_third
    lu.assertEquals(candidate({5, 6, 3, 4, 8, 9, 2}), {2, 6, 3, 4, 8, 9, 5})
    lu.assertEquals(candidate({5, 8, 3, 4, 6, 9, 2}), {2, 8, 3, 4, 6, 9, 5})
    lu.assertEquals(candidate({5, 6, 9, 4, 8, 3, 2}), {2, 6, 9, 4, 8, 3, 5})
    lu.assertEquals(candidate({5, 6, 3, 4, 8, 9, 2, 1}), {2, 6, 3, 4, 8, 9, 5, 1})
end

os.exit(lu.LuaUnit.run())