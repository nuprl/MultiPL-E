import std.math;
import std.typecons;
/*
Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
    the last couple centuries. However, what people don't know is Tribonacci sequence.
    Tribonacci sequence is defined by the recurrence:
    tri(1) = 3
    tri(n) = 1 + n / 2, if n is even.
    tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
    For example:
    tri(2) = 1 + (2 / 2) = 2
    tri(4) = 3
    tri(3) = tri(2) + tri(1) + tri(4)
           = 2 + 3 + 3 = 8 
    You are given a non-negative integer number n, you have to a return a list of the 
    first n + 1 numbers of the Tribonacci sequence.
    Examples:
    tri(3) = [1, 3, 2, 8]
    
*/
long[] tri(long n) 
{
    long[] ret = new long[n + 1];
    ret[0] = 1;
    ret[1] = 3;
    for (int i = 2; i <= n; i++)
    {
        if (i % 2 == 0)
        {
            ret[i] = 1 + ret[i / 2];
        }
        else
        {
            ret[i] = ret[i - 1] + ret[i - 2] + ret[i + 1];
        }
    }
    return ret;
}

unittest
{
    alias candidate = tri;

    assert(candidate(3L) == [1L, 3L, 2L, 8L]);
    assert(candidate(4L) == [1L, 3L, 2L, 8L, 3L]);
    assert(candidate(5L) == [1L, 3L, 2L, 8L, 3L, 15L]);
    assert(candidate(6L) == [1L, 3L, 2L, 8L, 3L, 15L, 4L]);
    assert(candidate(7L) == [1L, 3L, 2L, 8L, 3L, 15L, 4L, 24L]);
    assert(candidate(8L) == [1L, 3L, 2L, 8L, 3L, 15L, 4L, 24L, 5L]);
    assert(candidate(9L) == [1L, 3L, 2L, 8L, 3L, 15L, 4L, 24L, 5L, 35L]);
    assert(candidate(20L) == [1L, 3L, 2L, 8L, 3L, 15L, 4L, 24L, 5L, 35L, 6L, 48L, 7L, 63L, 8L, 80L, 9L, 99L, 10L, 120L, 11L]);
    assert(candidate(0L) == [1L]);
    assert(candidate(1L) == [1L, 3L]);
}
void main(){}