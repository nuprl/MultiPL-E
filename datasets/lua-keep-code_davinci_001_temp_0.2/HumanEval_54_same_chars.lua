-- Check if two words have the same characters.
-- >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
-- True
-- >>> same_chars('abcd', 'dddddddabc')
-- True
-- >>> same_chars('dddddddabc', 'abcd')
-- True
-- >>> same_chars('eabcd', 'dddddddabc')
-- False
-- >>> same_chars('abcd', 'dddddddabce')
-- False
-- >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
-- False
local function same_chars(s0, s1)
    local s0_chars = {}
    local s1_chars = {}
    for c in s0:gmatch('.') do
        s0_chars[c] = true
    end
    for c in s1:gmatch('.') do
        s1_chars[c] = true
    end
    for c in pairs(s0_chars) do
        if not s1_chars[c] then
            return false
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = same_chars
    lu.assertEquals(candidate('eabcdzzzz', 'dddzzzzzzzddeddabc'), true)
    lu.assertEquals(candidate('abcd', 'dddddddabc'), true)
    lu.assertEquals(candidate('dddddddabc', 'abcd'), true)
    lu.assertEquals(candidate('eabcd', 'dddddddabc'), false)
    lu.assertEquals(candidate('abcd', 'dddddddabcf'), false)
    lu.assertEquals(candidate('eabcdzzzz', 'dddzzzzzzzddddabc'), false)
    lu.assertEquals(candidate('aabb', 'aaccc'), false)
end

os.exit(lu.LuaUnit.run())