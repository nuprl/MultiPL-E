-- Input to this function is a string representing musical notes in a special ASCII format.
-- Your task is to parse this string and return list of integers corresponding to how many beats does each
-- not last.
-- Here is a legend:
-- 'o' - whole note, lasts four beats
-- 'o|' - half note, lasts two beats
-- '.|' - quater note, lasts one beat
-- >>> parse_music('o o| .| o| o| .| .| .| .| o o')
-- [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
local function parse_music(music_string)
    local music_notes = {}
    local music_notes_length = 0
    local music_notes_lengths = {}
    local music_notes_lengths_index = {}
    local music_notes_lengths_index[1] = 1
    local music_notes_lengths_index[2] = 2
    local music_notes_lengths_index[3] = 3
    local music_notes_lengths_index[4] = 4
    local music_notes_lengths_index[5] = 5
    local music_notes_lengths_index[6] = 6
    local music_notes_lengths_index[7] = 7
    local music_notes_lengths_index[8] = 8
    local music_notes_lengths_index[9] = 9
    local music_notes_lengths_index[10] = 10
    local music_notes_lengths_index[11] = 11
    local music_notes_lengths_index[12] = 12
    local music_notes_lengths_index[13] = 13
    local music_notes_lengths_index[14] = 14
    local music_notes_lengths_index[15] = 15
    local music_notes_lengths_index[16] = 16
    local music_notes_lengths_index[17] = 17
    local music_notes_lengths_index[18] = 18
    local music_notes_lengths_index[19] = 19
    local music_notes_lengths_index[20] = 20
    local music_notes_lengths_index[21] = 21
    local music_notes_lengths_index[22] = 22
    local music_notes_lengths_index[23] = 23
    local music_notes_lengths_index[24] = 24
    local music_notes_lengths_index[25] = 25
    local music_notes_lengths_index[26] = 26
    local music_notes_lengths_index[27] = 27
    local music_notes_lengths_index[28] = 28
    local music_notes_lengths_index[29] = 29
    local music_notes_lengths_index[30] = 30
    local music_notes_lengths_index[31] = 31
    local music_notes_lengths_index[32] = 32
    local music_notes_lengths_index[33] = 33
    local music_notes_lengths_index[34] = 34
    local music_notes_lengths_index[35] = 35
    local 

lu = require('luaunit')

function test_humaneval()
local candidate = parse_music
    lu.assertEquals(candidate(''), {})
    lu.assertEquals(candidate('o o o o'), {4, 4, 4, 4})
    lu.assertEquals(candidate('.| .| .| .|'), {1, 1, 1, 1})
    lu.assertEquals(candidate('o| o| .| .| o o o o'), {2, 2, 1, 1, 4, 4, 4, 4})
    lu.assertEquals(candidate('o| .| o| .| o o| o o|'), {2, 1, 2, 1, 4, 2, 4, 2})
end

os.exit(lu.LuaUnit.run())