-- You are given a string s.
-- Your task is to check if the string is happy or not.
-- A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
-- For example:
-- is_happy(a) => False
-- is_happy(aa) => False
-- is_happy(abcd) => True
-- is_happy(aabb) => False
-- is_happy(adb) => True
-- is_happy(xyy) => False
local function is_happy(s)
  local function is_happy_helper(s, i)
    if #s < 3 then
      return false
    end
    if i > #s then
      return true
    end
    if s:sub(i, i) == s:sub(i + 1, i + 1) and s:sub(i, i) == s:sub(i + 2, i + 2) then
      return false
    end
    return is_happy_helper(s, i + 1)
  end
  return is_happy_helper(s, 1)
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_happy
    lu.assertEquals(candidate('a'), false)
    lu.assertEquals(candidate('aa'), false)
    lu.assertEquals(candidate('abcd'), true)
    lu.assertEquals(candidate('aabb'), false)
    lu.assertEquals(candidate('adb'), true)
    lu.assertEquals(candidate('xyy'), false)
    lu.assertEquals(candidate('iopaxpoi'), true)
    lu.assertEquals(candidate('iopaxioi'), false)
end

os.exit(lu.LuaUnit.run())