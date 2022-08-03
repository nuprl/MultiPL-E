import std.math;
import std.typecons;
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
    long[] result = new long[0];
    if (a > b)
    {
        long temp = a;
        a = b;
        b = temp;
    }
    for (long i = a; i <= b; i++)
    {
        if (i % 2 == 0)
        {
            result = append(result, i);
        }
    }
    return result;
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