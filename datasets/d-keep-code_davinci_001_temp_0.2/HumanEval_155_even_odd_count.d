import std.typecons;
import std.math;
/*
Given an integer. return a tuple that has the number of even and odd digits respectively.

     Example:
        even_odd_count(-12) ==> (1, 1)
        even_odd_count(123) ==> (1, 2)
    
*/
Tuple!(long, long) even_odd_count(long num) 
{
    Tuple!(long, long) result;
    result.first = 0;
    result.second = 0;
    while (num > 0) {
        if (num % 2 == 0) {
            result.first += 1;
        } else {
            result.second += 1;
        }
        num /= 10;
    }
    return result;
}

unittest
{
    alias candidate = even_odd_count;

    assert(candidate(7L) == tuple(0L, 1L));
    assert(candidate(-78L) == tuple(1L, 1L));
    assert(candidate(3452L) == tuple(2L, 2L));
    assert(candidate(346211L) == tuple(3L, 3L));
    assert(candidate(-345821L) == tuple(3L, 3L));
    assert(candidate(-2L) == tuple(1L, 0L));
    assert(candidate(-45347L) == tuple(2L, 3L));
    assert(candidate(0L) == tuple(1L, 0L));
}
void main(){}