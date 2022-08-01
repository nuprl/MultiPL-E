import std.typecons;
import std.math;
/*
 Input to this function is a string representing musical notes in a special ASCII format.
    Your task is to parse this string and return list of integers corresponding to how many beats does each
    not last.

    Here is a legend:
    'o' - whole note, lasts four beats
    'o|' - half note, lasts two beats
    '.|' - quater note, lasts one beat

    >>> parse_music('o o| .| o| o| .| .| .| .| o o')
    [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
    
*/
long[] parse_music(string music_string) 
{
    // your code here
    return new long[] {};
}

unittest
{
    alias candidate = parse_music;

    assert(candidate("") == []);
    assert(candidate("o o o o") == [4L, 4L, 4L, 4L]);
    assert(candidate(".| .| .| .|") == [1L, 1L, 1L, 1L]);
    assert(candidate("o| o| .| .| o o o o") == [2L, 2L, 1L, 1L, 4L, 4L, 4L, 4L]);
    assert(candidate("o| .| o| .| o o| o o|") == [2L, 1L, 2L, 1L, 4L, 2L, 4L, 2L]);
}
void main(){}