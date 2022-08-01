import std.typecons;
import std.math;
/*
 Given a string, find out how many distinct characters (regardless of case) does it consist of
    >>> count_distinct_characters('xyzXYZ')
    3
    >>> count_distinct_characters('Jerry')
    4
    
*/
long count_distinct_characters(const(char)[] string) 
{
    long distinct_characters = 0;
    for (int i = 0; i < len(string); i++)
    {
        if (string[i] != string[i + 1])
        {
            distinct_characters++;
        }
    }
    return distinct_characters;
}

unittest
{
    alias candidate = count_distinct_characters;

    assert(candidate("") == 0);
    assert(candidate("abcde") == 5);
    assert(candidate("abcdecadeCADE") == 5);
    assert(candidate("aaaaAAAAaaaa") == 1);
    assert(candidate("Jerry jERRY JeRRRY") == 5);
}
void main(){}