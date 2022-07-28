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
  local music_list = {}
  local music_string_length = string.len(music_string)
  local music_string_index = 1
  local note_length = 0
  local note_length_multiplier = 1
  local note_length_multiplier_index = 1
  local note_length_multipliers = {
    {1, '|'},
    {2, '.'},
    {4, 'o'}
  }
  while music_string_index <= music_string_length do
    local current_char = string.sub(music_string, music_string_index, music_string_index)
    if current_char == ' ' then
      music_string_index = music_string_index + 1
    elseif current_char == 'o' then
      note_length = note_length + 4 * note_length_multiplier
      music_string_index = music_string_index + 1
    else
      local note_length_multiplier_found = false
      for _, note_length_multiplier_pair in ipairs(note_length_multipliers) do
        if current_char == note_length_multiplier_pair[2] then
          note_length_multiplier_found = true
          note_length_multiplier = note_length_multiplier_pair[1]
          note_length_multiplier_index = note_length_multiplier_index + 1
          music_string_index = music_string_index + 1
          break
        end
      end
      if not note_length_multiplier_found then
        error('Invalid note length multiplier: ' .. current_char)
      end
    end
  end
  return music_list
end

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