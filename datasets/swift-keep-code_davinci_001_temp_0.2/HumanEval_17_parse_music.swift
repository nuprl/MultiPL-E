// Input to this function is a string representing musical notes in a special ASCII format.
// Your task is to parse this string and return list of integers corresponding to how many beats does each
// not last.
// Here is a legend:
// 'o' - whole note, lasts four beats
// 'o|' - half note, lasts two beats
// '.|' - quater note, lasts one beat
// >>> parse_music('o o| .| o| o| .| .| .| .| o o')
// [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
func parse_music(music_string: String) -> [Int] {
	fatalError("unimplemented")

}

assert(parse_music(music_string: ) == [])
assert(parse_music(music_string: o o o o) == [4, 4, 4, 4])
assert(parse_music(music_string: .| .| .| .|) == [1, 1, 1, 1])
assert(parse_music(music_string: o| o| .| .| o o o o) == [2, 2, 1, 1, 4, 4, 4, 4])
assert(parse_music(music_string: o| .| o| .| o o| o o|) == [2, 1, 2, 1, 4, 2, 4, 2])