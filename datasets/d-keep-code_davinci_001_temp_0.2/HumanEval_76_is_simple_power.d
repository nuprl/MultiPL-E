import std.typecons;
import std.math;
/*
Your task is to write a function that returns true if a number x is a simple
    power of n and false in other cases.
    x is a simple power of n if n**int=x
    For example:
    is_simple_power(1, 4) => true
    is_simple_power(2, 2) => true
    is_simple_power(8, 2) => true
    is_simple_power(3, 2) => false
    is_simple_power(3, 1) => false
    is_simple_power(5, 3) => false
    
*/
bool is_simple_power(long x, long n) 
{
    if (x == n)
        return true;
    if (x % n != 0)
        return false;
    return is_simple_power(x / n, n);
}

unittest
{
    alias candidate = is_simple_power;

    assert(candidate(16L, 2L) == true);
    assert(candidate(143214L, 16L) == false);
    assert(candidate(4L, 2L) == true);
    assert(candidate(9L, 3L) == true);
    assert(candidate(16L, 4L) == true);
    assert(candidate(24L, 2L) == false);
    assert(candidate(128L, 4L) == false);
    assert(candidate(12L, 6L) == false);
    assert(candidate(1L, 1L) == true);
    assert(candidate(1L, 12L) == true);
}
void main(){}