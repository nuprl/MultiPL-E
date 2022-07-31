using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
    // fibfib(0) == 0
    // fibfib(1) == 0
    // fibfib(2) == 1
    // fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
    // Please write a function to efficiently compute the n-th element of the fibfib number sequence.
    // >>> fibfib(1)
    // 0
    // >>> fibfib(5)
    // 4
    // >>> fibfib(8)
    // 24
    public static int Fibfib(int n) {
        if (n <= 0) {
            return 0;
        }
        if (n == 1) {
            return 0;
        }
        if (n == 2) {
            return 1;
        }
        int[] fib = new int[n + 1];
        fib[0] = 0;
        fib[1] = 0;
        fib[2] = 1;
        for (int i = 3; i <= n; i++) {
            fib[i] = fib[i - 1] + fib[i - 2] + fib[i - 3];
        }
        return fib[n];

    }
    public static void Main(string[] args) {
    Debug.Assert(Fibfib((2)) == (1));
    Debug.Assert(Fibfib((1)) == (0));
    Debug.Assert(Fibfib((5)) == (4));
    Debug.Assert(Fibfib((8)) == (24));
    Debug.Assert(Fibfib((10)) == (81));
    Debug.Assert(Fibfib((12)) == (274));
    Debug.Assert(Fibfib((14)) == (927));
    }

}
