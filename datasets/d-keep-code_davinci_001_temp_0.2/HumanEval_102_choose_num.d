import std.math;
import std.typecons;
/*
This function takes two positive numbers x and y and returns the
    biggest even integer number that is in the range [x, y] inclusive. If 
    there's no such number, then the function should return -1.

    For example:
    choose_num(12, 15) = 14
    choose_num(13, 12) = -1
    
*/
long choose_num(long x, long y) 
{
    long result = -1;
    long i = 0;
    while (i <= y)
    {
        if (i % 2 == 0)
        {
            if (i >= x)
            {
                result = i;
            }
        }
        i++;
    }
    return result;
}

unittest
{
    alias candidate = choose_num;

    assert(candidate(12L, 15L) == 14L);
    assert(candidate(13L, 12L) == -1L);
    assert(candidate(33L, 12354L) == 12354L);
    assert(candidate(5234L, 5233L) == -1L);
    assert(candidate(6L, 29L) == 28L);
    assert(candidate(27L, 10L) == -1L);
    assert(candidate(7L, 7L) == -1L);
    assert(candidate(546L, 546L) == 546L);
}
void main(){}