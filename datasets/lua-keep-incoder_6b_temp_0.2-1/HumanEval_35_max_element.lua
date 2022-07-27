-- Return maximum element in the list.
-- >>> max_element([1, 2, 3])
-- 3
-- >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
-- 123
local function max_element(l)
  if #l == 0 then
    return nil
  end
  local max_element = l[1]
  for i = 2, #l do
    if l[i] > max_element then
      max_element = l[i]
    end
  end
  return max_element
end


lu = require('luaunit')

function test_humaneval()
local candidate = max_element
    lu.assertEquals(candidate({1, 2, 3}), 3)
    lu.assertEquals(candidate({5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10}), 124)
end

os.exit(lu.LuaUnit.run())