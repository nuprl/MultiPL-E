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

    assert(candidate(2L, 10L) == [2L, 4L, 6L, 8L]);
    assert(candidate(10L, 2L) == [2L, 4L, 6L, 8L]);
    assert(candidate(132L, 2L) == [2L, 4L, 6L, 8L]);
    assert(candidate(17L, 89L) == []);
}
void main(){}