-- You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
-- cycpattern_check("abcd","abd") => False
-- cycpattern_check("hello","ell") => True
-- cycpattern_check("whassup","psus") => False
-- cycpattern_check("abab","baa") => True
-- cycpattern_check("efef","eeff") => False
-- cycpattern_check("himenss","simen") => True
local function cycpattern_check(a, b)
  local function is_substring_helper(str, pattern)
    local function helper(str, pattern)
      if str:sub(1, #pattern) == pattern then
        return true
      end
      if str:sub(1, #pattern) > pattern then
        return false
      end
      return helper(str:sub(#pattern + 1), pattern)
    end
    return helper(str, pattern)
  end
  return is_substring_helper(a, b) or is_substring_helper(b, a)
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