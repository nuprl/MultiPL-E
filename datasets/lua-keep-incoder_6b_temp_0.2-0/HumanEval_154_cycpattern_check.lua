-- You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
-- cycpattern_check("abcd","abd") => False
-- cycpattern_check("hello","ell") => True
-- cycpattern_check("whassup","psus") => False
-- cycpattern_check("abab","baa") => True
-- cycpattern_check("efef","eeff") => False
-- cycpattern_check("himenss","simen") => True
local function cycpattern_check(a, b)
  local function is_substring_helper(substr, str, i, j)
    if i == j then
      return true
    end
    if substr == "" then
      return false
    end
    if substr == str[i] then
      return is_substring_helper(substr, str, i + 1, j + 1)
    end
    return is_substring_helper(substr, str, i + 1, j)
  end
  return is_substring_helper(b, a, 1, #a)
end


lu = require('luaunit')

function test_humaneval()
local candidate = cycpattern_check
    lu.assertEquals(candidate('xyzw', 'xyw'), false)
    lu.assertEquals(candidate('yello', 'ell'), true)
    lu.assertEquals(candidate('whattup', 'ptut'), false)
    lu.assertEquals(candidate('efef', 'fee'), true)
    lu.assertEquals(candidate('abab', 'aabb'), false)
    lu.assertEquals(candidate('winemtt', 'tinem'), true)
end

os.exit(lu.LuaUnit.run())