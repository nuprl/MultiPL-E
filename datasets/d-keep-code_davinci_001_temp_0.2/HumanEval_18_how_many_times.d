import std.math;
import std.typecons;
/*
 Find how many times a given substring can be found in the original string. Count overlaping cases.
    >>> how_many_times('', 'a')
    0
    >>> how_many_times('aaa', 'a')
    3
    >>> how_many_times('aaaa', 'aa')
    3
    
*/
long how_many_times(const(char)[] string, const(char)[] substring) 
{
    long count = 0;
    long len_substring = std.math.length(substring);
    long len_string = std.math.length(string);
    for(long i = 0; i < len_string - len_substring + 1; i++)
    {
        if(std.math.equals(string[i], substring[0]))
        {
            if(std.math.equals(substring, string[i:i+len_substring]))
            {
                count++;
            }
        }
    }
    return count;
}

unittest
{
    alias candidate = how_many_times;

    assert(candidate("", "x") == 0);
    assert(candidate("xyxyxyx", "x") == 4);
    assert(candidate("cacacacac", "cac") == 4);
    assert(candidate("john doe", "john") == 1);
}
void main(){}