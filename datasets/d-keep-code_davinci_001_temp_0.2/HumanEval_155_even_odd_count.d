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

    assert(candidate(7) == tuple(0, 1));
    assert(candidate(-78) == tuple(1, 1));
    assert(candidate(3452) == tuple(2, 2));
    assert(candidate(346211) == tuple(3, 3));
    assert(candidate(-345821) == tuple(3, 3));
    assert(candidate(-2) == tuple(1, 0));
    assert(candidate(-45347) == tuple(2, 3));
    assert(candidate(0) == tuple(1, 0));
}
void main(){}