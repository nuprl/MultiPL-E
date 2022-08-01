import std.typecons;
import std.math;
/*
Return 2^n modulo p (be aware of numerics).
    >>> modp(3, 5)
    3
    >>> modp(1101, 101)
    2
    >>> modp(0, 101)
    1
    >>> modp(3, 11)
    8
    >>> modp(100, 101)
    1
    
*/
long modp(long n, long p) 
{
    if (n == 0)
        return 1;
    else
        return (modp(n - 1, p) * 2) % p;
}
/*
Return the greatest common divisor of a and b.
    >>> gcd(12, 8)
    4
    >>> gcd(12, 9)
    3
    >>> gcd(12, 0)
    12
    >>> gcd(12, 12)
    12
    >>> gcd(12, 7)
    1
    >>> gcd(12, 11)
    1
    
*/
long gcd(long a, long b) 
{
    if (b == 0)
        return a;
    else
        return gcd(b, a % b);
}
/*
Return the least common multiple of a and b.
    >>> lcm(12, 8)
    24
    >>> lcm(12, 9)
    36
    >>> lcm(12, 0)
    0
    >>> lcm(12, 12)
    12
    >>> lcm(12, 7)
    84
    >>> lcm(12, 11)
    132
    
*/
long lcm(long a, long b) 
{
    if (a == 0 || b == 0)
        return 0;
    else
        return (a * b) / gcd(a, b);
}
/*
Return the multiplicative inverse of a modulo b.
    >>> modinv(2, 5)
    3
    >>> modinv(3, 5)
    2
    >>> modinv(4, 5)
    3
    >>> modinv(5, 5)
    1
    >>> modinv(6, 5)
    4
    >>> modinv(7, 5)
    3
    
*/
long modinv(long a, long b) 
{
    if (gcd(a, b) == 1)
        return modp(a, b);
    else
        return 0;
}
/*
Return the multiplicative inverse of a modulo b.
    >>> modinv(2, 5)
    3
   

unittest
{
    alias candidate = modp;

    assert(candidate(3L, 5L) == 3L);
    assert(candidate(1101L, 101L) == 2L);
    assert(candidate(0L, 101L) == 1L);
    assert(candidate(3L, 11L) == 8L);
    assert(candidate(100L, 101L) == 1L);
    assert(candidate(30L, 5L) == 4L);
    assert(candidate(31L, 5L) == 3L);
}
void main(){}