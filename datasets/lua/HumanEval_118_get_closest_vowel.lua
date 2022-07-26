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
    local vowels = {'a', 'e', 'i', 'o', 'u'}
    local consonants = {'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'}
    local vowels_count = 0
    local consonants_count = 0
    local vowels_index = 0
    local consonants_index = 0
    local vowels_index_list = {}
    local consonants_index_list = {}
    local vowels_count_list = {}
    local consonants_count_list = {}
    local vowels_index_list_count = 0
    local consonants_index_list_count = 0
    local vowels_count_list_count = 0
    local consonants_count_list_count = 0
    local vowels_index_list_count_temp = 0
    local consonants_index_list_count_temp = 0
    local vowels_count_list_count_temp = 0
    local consonants_count_list_count_temp = 0
    local vowels_index_list_temp = {}
    local consonants_index_list_temp = {}
    local vowels_count_list_temp = {}
    local consonants_count_list_temp = {}
    local vowels_index_list_temp_count = 0
    local consonants_index_list_temp_count = 0
    local vowels_count_list_temp_count = 0
    local consonants_count_list_temp_count = 0
    local vowels_index_list_temp_count_temp = 0
    local consonants_index_list_temp_count_temp = 0
    local vowels_count_list_temp_count_temp = 0
    local consonants_count_list_temp_count_temp = 0
    local vowels_index_list_temp_count_temp_temp = 0
    local consonants_index_list_temp_count_temp
-- Unit tests below

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