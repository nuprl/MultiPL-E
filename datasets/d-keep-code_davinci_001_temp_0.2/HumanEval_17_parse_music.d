import std.math;
import std.typecons;
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
long[] parse_music(const(char)[] music_string) 
{
    // your code here
    return null;
}

unittest
{
    alias candidate = parse_music;

    assert(candidate("") == []);
    assert(candidate("o o o o") == [4, 4, 4, 4]);
    assert(candidate(".| .| .| .|") == [1, 1, 1, 1]);
    assert(candidate("o| o| .| .| o o o o") == [2, 2, 1, 1, 4, 4, 4, 4]);
    assert(candidate("o| .| o| .| o o| o o|") == [2, 1, 2, 1, 4, 2, 4, 2]);
}
void main(){}