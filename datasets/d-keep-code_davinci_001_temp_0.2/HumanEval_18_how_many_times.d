import std.typecons;
import std.math;
/*
 Find how many times a given substring can be found in the original string. Count overlaping cases.
    >>> how_many_times('', 'a')
    0
    >>> how_many_times('aaa', 'a')
    3
    >>> how_many_times('aaaa', 'aa')
    3
    
*/
long how_many_times(string string, string substring) 
{
    if (substring.size() == 0)
        return 0;
    long count = 0;
    for (int i = 0; i < string.size() - substring.size() + 1; i++)
    {
        if (string.substr(i, substring.size()) == substring)
            count++;
    }
    return count;
}

unittest
{
    alias candidate = how_many_times;

    assert(candidate("", "x") == 0L);
    assert(candidate("xyxyxyx", "x") == 4L);
    assert(candidate("cacacacac", "cac") == 4L);
    assert(candidate("john doe", "john") == 1L);
}
void main(){}