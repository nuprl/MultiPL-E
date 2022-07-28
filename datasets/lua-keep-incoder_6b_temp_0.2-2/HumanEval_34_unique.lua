-- Return sorted unique elements in a list
-- >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
-- [0, 2, 3, 5, 9, 123]
local function unique(l)
  local seen = {}
  local out = {}
  for _, v in ipairs(l) do
    if seen[v] == nil then
      seen[v] = true
      out[#out + 1] = v
    end
  end
  return out
end


lu = require('luaunit')

function test_humaneval()
local candidate = unique
    lu.assertEquals(candidate({5, 3, 5, 2, 3, 3, 9, 0, 123}), {0, 2, 3, 5, 9, 123})
end

os.exit(lu.LuaUnit.run())