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

    assert(candidate(5) == [1, 2, 6, 24, 15]);
    assert(candidate(7) == [1, 2, 6, 24, 15, 720, 28]);
    assert(candidate(1) == [1]);
    assert(candidate(3) == [1, 2, 6]);
}
void main(){}