import std.typecons;
import std.math;
/*
Create a function which returns the largest index of an element which
    is not greater than or equal to the element immediately preceding it. If
    no such element exists then return -1. The given array will not contain
    duplicate values.

    Examples:
    can_arrange([1,2,4,3,5]) = 3
    can_arrange([1,2,3]) = -1
    
*/
long can_arrange(long[] arr) 
{
    long i = 0;
    long j = 0;
    long k = 0;
    long l = 0;
    long m = 0;
    long n = 0;
    long o = 0;
    long p = 0;
    long q = 0;
    long r = 0;
    long s = 0;
    long t = 0;
    long u = 0;
    long v = 0;
    long w = 0;
    long x = 0;
    long y = 0;
    long z = 0;
    long a = 0;
    long b = 0;
    long c = 0;
    long d = 0;
    long e = 0;
    long f = 0;
    long g = 0;
    long h = 0;
    long i1 = 0;
    long j1 = 0;
    long k1 = 0;
    long l1 = 0;
    long m1 = 0;
    long n1 = 0;
    long o1 = 0;
    long p1 = 0;
    long q1 = 0;
    long r1 = 0;
    long s1 = 0;
    long t1 = 0;
    long u1 = 0;
    long v1 = 0;
    long w1 = 0;
    long x1 = 0;
    long y1 = 0;
    long z1 = 0;
    long a1 = 0;
    long b1 = 0;
    long c1 = 0;
    long d1 = 0;
    long e1 = 0;
    long f1 = 0;
    long g1 = 0;
    long h1 = 0;
    long i2 = 0;
    long j2 = 0;
    long k2 = 0;
    long l2 = 0;
    long m2 = 0;
    long n2 = 0;
    long o2 = 0;
    long p2 = 0;
    long q2 = 0;
    long r2 = 0;
    long s2 = 0;
    long t2 = 0;
    long u2 = 0;
    long v

unittest
{
    alias candidate = can_arrange;

    assert(candidate([1L, 2L, 4L, 3L, 5L]) == 3L);
    assert(candidate([1L, 2L, 4L, 5L]) == -1L);
    assert(candidate([1L, 4L, 2L, 5L, 6L, 7L, 8L, 9L, 10L]) == 2L);
    assert(candidate([4L, 8L, 5L, 7L, 3L]) == 4L);
    assert(candidate([]) == -1L);
}
void main(){}