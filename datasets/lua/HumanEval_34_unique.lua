-- Return sorted unique elements in a list
-- >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
-- [0, 2, 3, 5, 9, 123]
local function unique(l)
  local m = {}
  local n = {}
  for i,v in ipairs(l) do
    if not m[v] then
      n[#n+1] = v
      m[v] = true
    end
  end
  table.sort(n)
  return n
end

lu = require('luaunit')

function test_humaneval()
local candidate = unique
    lu.assertEquals(candidate({5, 3, 5, 2, 3, 3, 9, 0, 123}), {0, 2, 3, 5, 9, 123})
end

os.exit(lu.LuaUnit.run())