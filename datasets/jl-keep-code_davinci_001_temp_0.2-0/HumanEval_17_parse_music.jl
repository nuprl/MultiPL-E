""" Input to this function is a string representing musical notes in a special ASCII format.
    Your task is to parse this string and return list of integers corresponding to how many beats does each
    not last.

    Here is a legend:
    'o' - whole note, lasts four beats
    'o|' - half note, lasts two beats
    '.|' - quater note, lasts one beat

    >>> parse_music('o o| .| o| o| .| .| .| .| o o')
    [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
    """
function parse_music(music_string::String)::Vector{Int64} 
    music_string = replace(music_string, 'o', '4')
    music_string = replace(music_string, 'o|', '2')
    music_string = replace(music_string, '.|', '1')
    music_string = split(music_string, ' ')
    music_string = map(x -> parse(Int64, x), music_string)
    return music_string
end
parse_music('o o| .| o| o| .| .| .| .| o o')


using Test

@testset begin

candidate = parse_music;
	@test(candidate("") == Vector{Int64}([]))
	@test(candidate("o o o o") == [4, 4, 4, 4])
	@test(candidate(".| .| .| .|") == [1, 1, 1, 1])
	@test(candidate("o| o| .| .| o o o o") == [2, 2, 1, 1, 4, 4, 4, 4])
	@test(candidate("o| .| o| .| o o| o o|") == [2, 1, 2, 1, 4, 2, 4, 2])
end
