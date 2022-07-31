using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // prime_fib returns n-th number that is a Fibonacci number and it's also prime.
    // >>> prime_fib(1)
    // 2
    // >>> prime_fib(2)
    // 3
    // >>> prime_fib(3)
    // 5
    // >>> prime_fib(4)
    // 13
    // >>> prime_fib(5)
    // 89
    public static int PrimeFib(int n) {
        int[] fib = new int[n + 1];
        fib[0] = 0;
        fib[1] = 1;
        for (int i = 2; i <= n; i++) {
            fib[i] = fib[i - 1] + fib[i - 2];
        }
        return fib[n];

    }
    public static void Main(string[] args) {
    Debug.Assert(PrimeFib((1)) == (2));
    Debug.Assert(PrimeFib((2)) == (3));
    Debug.Assert(PrimeFib((3)) == (5));
    Debug.Assert(PrimeFib((4)) == (13));
    Debug.Assert(PrimeFib((5)) == (89));
    Debug.Assert(PrimeFib((6)) == (233));
    Debug.Assert(PrimeFib((7)) == (1597));
    Debug.Assert(PrimeFib((8)) == (28657));
    Debug.Assert(PrimeFib((9)) == (514229));
    Debug.Assert(PrimeFib((10)) == (433494437));
    }

}
