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
long how_many_times(const(char)[] string, const(char)[] substring) 
{
    long len_substring = len(substring);
    long len_string = len(string);
    long result = 0;
    for(long i = 0; i < len_string - len_substring + 1; i++)
    {
        if(string[i] == substring[0])
        {
            if(string[i + 1] == substring[1])
            {
                if(string[i + 2] == substring[2])
                {
                    result += 1;
                }
            }
        }
    }
    return result;
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