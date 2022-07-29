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
int how_many_times(const(char)[] string, const(char)[] substring) 
{
    int i = 0;
    int j = 0;
    int count = 0;
    while(i < len(string)) {
        if(string[i] == substring[j]) {
            j += 1;
            if(j == len(substring)) {
                count += 1;
                j = 0;
            }
        } else {
            j = 0;
        }
        i += 1;
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