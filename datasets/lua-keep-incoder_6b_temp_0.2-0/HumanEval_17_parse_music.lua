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
    music_string = music_string or 'o'
    local music_notes = {}
    local note_count = 0
    local note_length = 0
    local note_octave = 0
    local note_duration = 0
    local note_durations = {}
    local note_name = ''
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    local note_name = ''
    local note_names = {}
    local note_duration = 0
    

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