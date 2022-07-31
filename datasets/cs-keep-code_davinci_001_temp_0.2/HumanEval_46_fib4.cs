using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
    // fib4(0) -> 0
    // fib4(1) -> 0
    // fib4(2) -> 2
    // fib4(3) -> 0
    // fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
    // Please write a function to efficiently compute the n-th element of the fib4 number sequence.  Do not use recursion.
    // >>> fib4(5)
    // 4
    // >>> fib4(6)
    // 8
    // >>> fib4(7)
    // 14
    public static int Fib4(int n) {
        if (n == 0) return 0;
        if (n == 1) return 0;
        if (n == 2) return 2;
        if (n == 3) return 0;
        int a = 0;
        int b = 0;
        int c = 2;
        int d = 0;
        for (int i = 4; i <= n; i++) {
            a = b;
            b = c;
            c = d;
            d = a + b + c + d;
        }
        return d;

    }
    public static void Main(string[] args) {
    Debug.Assert(Fib4((5)) == (4));
    Debug.Assert(Fib4((8)) == (28));
    Debug.Assert(Fib4((10)) == (104));
    Debug.Assert(Fib4((12)) == (386));
    }

}
