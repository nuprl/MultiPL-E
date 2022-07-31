using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return 2^n modulo p (be aware of numerics).
    // >>> modp(3, 5)
    // 3
    // >>> modp(1101, 101)
    // 2
    // >>> modp(0, 101)
    // 1
    // >>> modp(3, 11)
    // 8
    // >>> modp(100, 101)
    // 1
    public static int Modp(int n, int p) {
        if (n == 0) return 1;
        if (n == 1) return 0;
        int res = Modp(n / 2, p);
        res = (res * res) % p;
        if (n % 2 == 1) res = (res * 2) % p;
        return res;

    }
    public static void Main(string[] args) {
    Debug.Assert(Modp((3), (5)) == (3));
    Debug.Assert(Modp((1101), (101)) == (2));
    Debug.Assert(Modp((0), (101)) == (1));
    Debug.Assert(Modp((3), (11)) == (8));
    Debug.Assert(Modp((100), (101)) == (1));
    Debug.Assert(Modp((30), (5)) == (4));
    Debug.Assert(Modp((31), (5)) == (3));
    }

}
