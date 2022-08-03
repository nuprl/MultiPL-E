import std.math;
import std.typecons;
/*
 Implement the function f that takes n as a parameter,
    and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
    or the sum of numbers from 1 to i otherwise.
    i starts from 1.
    the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
    Example:
    f(5) == [1, 2, 6, 24, 15]
    
*/
long[] f(long n) 
{
    var res = new long[n];
    for (int i = 1; i <= n; i++)
    {
        if (i % 2 == 0)
            res[i - 1] = i * (i - 1);
        else
            res[i - 1] = std.math.sum(1, i);
    }
    return res;
}

unittest
{
    alias candidate = f;

    assert(candidate(5L) == [1L, 2L, 6L, 24L, 15L]);
    assert(candidate(7L) == [1L, 2L, 6L, 24L, 15L, 720L, 28L]);
    assert(candidate(1L) == [1L]);
    assert(candidate(3L) == [1L, 2L, 6L]);
}
void main(){}