import std.math;
import std.typecons;
/*
 Given a string, find out how many distinct characters (regardless of case) does it consist of
    >>> count_distinct_characters('xyzXYZ')
    3
    >>> count_distinct_characters('Jerry')
    4
    
*/
long count_distinct_characters(string string) 
{
    long distinct_characters = 0;
    foreach(char c in string)
    {
        if (c >= 'A' && c <= 'Z')
        {
            c = char(c - 'A' + 'a');
        }
        if (c >= 'a' && c <= 'z')
        {
            distinct_characters++;
        }
    }
    return distinct_characters;
}

unittest
{
    alias candidate = count_distinct_characters;

    assert(candidate("") == 0L);
    assert(candidate("abcde") == 5L);
    assert(candidate("abcdecadeCADE") == 5L);
    assert(candidate("aaaaAAAAaaaa") == 1L);
    assert(candidate("Jerry jERRY JeRRRY") == 5L);
}
void main(){}