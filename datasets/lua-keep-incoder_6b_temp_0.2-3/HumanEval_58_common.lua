-- Return sorted unique common elements for two lists.
-- >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
-- [1, 5, 653]
-- >>> common([5, 3, 2, 8], [3, 2])
-- [2, 3]
local function common(l1, l2)
  local common = {}
  for _, v in ipairs(l1) do
    for _, v2 in ipairs(l2) do
      if v == v2 then
        table.insert(common, v)
      end
    end
  end
  return common
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