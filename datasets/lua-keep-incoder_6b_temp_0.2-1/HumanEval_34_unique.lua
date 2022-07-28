-- Return sorted unique elements in a list
-- >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
-- [0, 2, 3, 5, 9, 123]
local function unique(l)
  local u = {}
  local i = 1
  for _, v in ipairs(l) do
    if v ~= l[i] then
      u[#u + 1] = v
    end
    i = i + 1
  end
  return u
end


lu = require('luaunit')

function test_humaneval()
local candidate = unique
    lu.assertEquals(candidate({5, 3, 5, 2, 3, 3, 9, 0, 123}), {0, 2, 3, 5, 9, 123})
end

os.exit(lu.LuaUnit.run())