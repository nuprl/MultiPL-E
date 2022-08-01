import std.typecons;
import std.math;
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
    long i = x;
    while (i <= y)
    {
        if (i % 2 == 0)
        {
            result = i;
            break;
        }
        i++;
    }
    return result;
}

unittest
{
    alias candidate = choose_num;

    assert(candidate(12, 15) == 14);
    assert(candidate(13, 12) == -1);
    assert(candidate(33, 12354) == 12354);
    assert(candidate(5234, 5233) == -1);
    assert(candidate(6, 29) == 28);
    assert(candidate(27, 10) == -1);
    assert(candidate(7, 7) == -1);
    assert(candidate(546, 546) == 546);
}
void main(){}