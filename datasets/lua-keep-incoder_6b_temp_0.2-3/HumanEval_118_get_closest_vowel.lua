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
	local vowels = {"a", "e", "i", "o", "u", "y"}
	local vowels_count = #vowels
	local vowels_index = 1
	local vowels_index_count = 0
	local vowels_index_count_min = #vowels
	local vowels_index_count_max = 0
	local vowels_index_count_min_index = 0
	local vowels_index_count_max_index = 0
	local vowels_index_count_min_count = 0
	local vowels_index_count_max_count = 0
	local vowels_index_count_min_count_index = 0
	local vowels_index_count_max_count_index = 0
	local vowels_index_count_min_count_count = 0
	local vowels_index_count_max_count_count = 0
	local vowels_index_count_min_count_count_index = 0
	local vowels_index_count_max_count_count_index = 0
	local vowels_index_count_min_count_count_count = 0
	local vowels_index_count_max_count_count_count = 0
	local vowels_index_count_min_count_count_index = 0
	local vowels_index_count_max_count_count_index = 0
	local vowels_index_count_min_count_count_count = 0
	local vowels_index_count_max_count_count_count = 0
	local vowels_index_count_min_count_count_count_index = 0
	local vowels_index_count_max_count_count_index = 0
	local vowels_index_count_min_count_count_count = 0
	local vowels_index_count_max_count_count_count = 0
	local vowels_index_count_min_count_count_count_index = 0
	local vowels_index_count_max_count_count_index = 0
	local vowels_index_count_min_count_count_count = 0
	local vowels_index_count_max_count_count_count = 0
	local vowels_index_count_min_count_count_count_index = 0
	local vowels_index_count_max_count_count_index = 0
	local vowels_index_count_min_count_count_count_count = 0
	local vowels_index_count_max_count_count_count = 0
	local vowels_index_count_min_count_count_count_index = 0
	local vowels_index_count_max_count_count_index = 0
	local vowels_index_count_min_count_count_count_count = 0
	local vowels_index_count_max_count_count_count = 0
	local vowels_index_count_min_count_count_count_index = 0
	local vowels_index_count_max_count_count_index = 0
	local vowels_index_count_min_count_count_count_count = 0
	local vowels_index_count_max_count_count_count = 0
	local vowels_index_count_min_count_count_count_index = 0
	local vowels_index_count_max_count_count_index = 0
	local vowels_index_count_min_count_count_count_count = 0
	local vowels_index_count_max_

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