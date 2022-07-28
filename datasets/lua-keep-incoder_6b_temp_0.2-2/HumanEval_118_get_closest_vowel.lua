-- You are given a word. Your task is to find the closest vowel that stands between 
-- two consonants from the right side of the word (case sensitive).
-- Vowels in the beginning and ending doesn't count. Return empty string if you didn't
-- find any vowel met the above condition. 
-- You may assume that the given string contains English letter only.
-- Example:
-- get_closest_vowel("yogurt") ==> "u"
-- get_closest_vowel("FULL") ==> "U"
-- get_closest_vowel("quick") ==> ""
-- get_closest_vowel("ab") ==> ""
local function get_closest_vowel(word)
    local vowels = {}
    local vowel_found = false
    local vowel_start = 0
    local vowel_end = 0
    local vowel_found = false
    local vowel_start = 0
    local vowel_end = 0
    for i = 1, #word do
        if string.sub(word,i,i) == "a" then
            vowel_start = i
            vowel_found = true
        end
        if string.sub(word,i,i) == "e" then
            vowel_end = i
            vowel_found = true
        end
        if vowel_found then
            if string.sub(word,vowel_end,vowel_end) == "u" then
                vowels[#vowels+1] = string.sub(word,vowel_end,vowel_end)
            end
        end
    end
    if #vowels == 0 then
        return ""
    end
    local vowel_min = math.min(#vowels,1)
    return vowels[vowel_min]
end

-- Returns the number of vowels in the given word.
-- Example:
-- count_vowels("yogurt") ==> 3
-- count_vowels("FULL") ==> 2
-- count_vowels("quick") ==> 0
-- count_vowels("ab") ==> 0

lu = require('luaunit')

function test_humaneval()
local candidate = get_closest_vowel
    lu.assertEquals(candidate('yogurt'), 'u')
    lu.assertEquals(candidate('full'), 'u')
    lu.assertEquals(candidate('easy'), '')
    lu.assertEquals(candidate('eAsy'), '')
    lu.assertEquals(candidate('ali'), '')
    lu.assertEquals(candidate('bad'), 'a')
    lu.assertEquals(candidate('most'), 'o')
    lu.assertEquals(candidate('ab'), '')
    lu.assertEquals(candidate('ba'), '')
    lu.assertEquals(candidate('quick'), '')
    lu.assertEquals(candidate('anime'), 'i')
    lu.assertEquals(candidate('Asia'), '')
    lu.assertEquals(candidate('Above'), 'o')
end

os.exit(lu.LuaUnit.run())