import std.typecons;
import std.math;
/*

    Given two positive integers a and b, return the even digits between a
    and b, in ascending order.

    For example:
    generate_integers(2, 8) => [2, 4, 6, 8]
    generate_integers(8, 2) => [2, 4, 6, 8]
    generate_integers(10, 14) => []
    
*/
long[] generate_integers(long a, long b) 
{
    // your code here
    return [];
}

unittest
{
    alias candidate = generate_integers;

    assert(candidate(2, 10) == [2, 4, 6, 8]);
    assert(candidate(10, 2) == [2, 4, 6, 8]);
    assert(candidate(132, 2) == [2, 4, 6, 8]);
    assert(candidate(17, 89) == []);
}
void main(){}