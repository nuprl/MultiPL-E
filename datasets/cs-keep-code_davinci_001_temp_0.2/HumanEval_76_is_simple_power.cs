using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Your task is to write a function that returns true if a number x is a simple
    // power of n and false in other cases.
    // x is a simple power of n if n**int=x
    // For example:
    // is_simple_power(1, 4) => true
    // is_simple_power(2, 2) => true
    // is_simple_power(8, 2) => true
    // is_simple_power(3, 2) => false
    // is_simple_power(3, 1) => false
    // is_simple_power(5, 3) => false
    public static bool IsSimplePower(int x, int n) {
        if (x == 1) return true;
        if (x % n != 0) return false;
        return IsSimplePower(x / n, n);

    }
    public static void Main(string[] args) {
    Debug.Assert(IsSimplePower((16), (2)) == (true));
    Debug.Assert(IsSimplePower((143214), (16)) == (false));
    Debug.Assert(IsSimplePower((4), (2)) == (true));
    Debug.Assert(IsSimplePower((9), (3)) == (true));
    Debug.Assert(IsSimplePower((16), (4)) == (true));
    Debug.Assert(IsSimplePower((24), (2)) == (false));
    Debug.Assert(IsSimplePower((128), (4)) == (false));
    Debug.Assert(IsSimplePower((12), (6)) == (false));
    Debug.Assert(IsSimplePower((1), (1)) == (true));
    Debug.Assert(IsSimplePower((1), (12)) == (true));
    }

}
