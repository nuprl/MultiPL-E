import std.typecons;
import std.math;
/*

    prime_fib returns n-th number that is a Fibonacci number and it's also prime.
    >>> prime_fib(1)
    2
    >>> prime_fib(2)
    3
    >>> prime_fib(3)
    5
    >>> prime_fib(4)
    13
    >>> prime_fib(5)
    89
    
*/
int prime_fib(int n) 
{
    int i, j, k, l, m, x, y, z;
    int a, b, c, d, e, f, g, h, p, q, r, s, t, u, v, w, x, y, z;
    int a1, b1, c1, d1, e1, f1, g1, h1, p1, q1, r1, s1, t1, u1, v1, w1, x1, y1, z1;
    int a2, b2, c2, d2, e2, f2, g2, h2, p2, q2, r2, s2, t2, u2, v2, w2, x2, y2, z2;
    int a3, b3, c3, d3, e3, f3, g3, h3, p3, q3, r3, s3, t3, u3, v3, w3, x3, y3, z3;
    int a4, b4, c4, d4, e4, f4, g4, h4, p4, q4, r4, s4, t4, u4, v4, w4, x4, y4, z4;
    int a5, b5, c5, d5, e5, f5, g5, h5, p5, q5, r5, s5, t5, u5, v5, w5, x5, y5, z5;
    int a6, b6, c6, d6, e6, f6, g6, h6, p6, q6, r6, s6, t6, u6, v6, w6, x6, y6, z6;
    int a7, b7, c7, d7, e7, f7, g7, h7, p7, q7, r7, s7, t7, u7, v7, w7, x7, y7, z7;
    int a8, b8, c8, d8, e8,

unittest
{
    alias candidate = prime_fib;

    assert(candidate(1) == 2);
    assert(candidate(2) == 3);
    assert(candidate(3) == 5);
    assert(candidate(4) == 13);
    assert(candidate(5) == 89);
    assert(candidate(6) == 233);
    assert(candidate(7) == 1597);
    assert(candidate(8) == 28657);
    assert(candidate(9) == 514229);
    assert(candidate(10) == 433494437);
}
void main(){}