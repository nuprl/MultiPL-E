using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return n-th Fibonacci number.
    // >>> fib(10)
    // 55
    // >>> fib(1)
    // 1
    // >>> fib(8)
    // 21
    public static int Fib(int n) {
        if (n == 0) return 0;
        if (n == 1) return 1;
        return Fib(n - 1) + Fib(n - 2);

    }
    public static void Main(string[] args) {
    Debug.Assert(Fib((10)) == (55));
    Debug.Assert(Fib((1)) == (1));
    Debug.Assert(Fib((8)) == (21));
    Debug.Assert(Fib((11)) == (89));
    Debug.Assert(Fib((12)) == (144));
    }

}
