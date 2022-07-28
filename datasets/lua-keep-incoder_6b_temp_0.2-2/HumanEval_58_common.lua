-- Return sorted unique common elements for two lists.
-- >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
-- [1, 5, 653]
-- >>> common([5, 3, 2, 8], [3, 2])
-- [2, 3]
local function common(l1, l2)
  local i1, i2 = 1, #l1
  local j1, j2 = 1, #l2
  while i1 <= i2 do
    local e1 = l1[i1]
    local e2 = l2[j2]
    if e1 == e2 then
      i1 = i1 + 1
      j2 = j2 + 1
    elseif e1 < e2 then
      i1 = i1 + 1
    else
      j2 = j2 + 1
    end
  end
  return l1[i1]
end


lu = require('luaunit')

function test_humaneval()
local candidate = common
    lu.assertEquals(candidate({1, 4, 3, 34, 653, 2, 5}, {5, 7, 1, 5, 9, 653, 121}), {1, 5, 653})
    lu.assertEquals(candidate({5, 3, 2, 8}, {3, 2}), {2, 3})
    lu.assertEquals(candidate({4, 3, 2, 8}, {3, 2, 4}), {2, 3, 4})
    lu.assertEquals(candidate({4, 3, 2, 8}, {}), {})
end

os.exit(lu.LuaUnit.run())