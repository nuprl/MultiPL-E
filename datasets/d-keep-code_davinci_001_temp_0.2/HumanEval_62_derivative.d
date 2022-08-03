import std.math;
import std.typecons;
/*
 xs represent coefficients of a polynomial.
    xs[0] + xs[1] * x + xs[2] * x^2 + ....
     Return derivative of this polynomial in the same form.
    >>> derivative([3, 1, 2, 4, 5])
    [1, 4, 12, 20]
    >>> derivative([1, 2, 3])
    [2, 6]
    
*/
long[] derivative(long[] xs) 
{
    long[] ys = new long[xs.length - 1];
    for (int i = 1; i < xs.length; i++)
        ys[i - 1] = i * xs[i];
    return ys;
}

unittest
{
    alias candidate = derivative;

    assert(candidate([3L, 1L, 2L, 4L, 5L]) == [1L, 4L, 12L, 20L]);
    assert(candidate([1L, 2L, 3L]) == [2L, 6L]);
    assert(candidate([3L, 2L, 1L]) == [2L, 2L]);
    assert(candidate([3L, 2L, 1L, 0L, 4L]) == [2L, 2L, 0L, 16L]);
    assert(candidate([1L]) == []);
}
void main(){}