import std.typecons;
import std.math;
/*
 Given a string, find out how many distinct characters (regardless of case) does it consist of
    >>> count_distinct_characters('xyzXYZ')
    3
    >>> count_distinct_characters('Jerry')
    4
    
*/
long count_distinct_characters(string string) 
{
    long count = 0;
    foreach(char c in string)
    {
        if(c != ' ')
        {
            count++;
        }
    }
    return count;
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