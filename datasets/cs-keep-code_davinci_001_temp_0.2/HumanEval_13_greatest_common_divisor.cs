using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Return a greatest common divisor of two integers a and b
    // >>> greatest_common_divisor(3, 5)
    // 1
    // >>> greatest_common_divisor(25, 15)
    // 5
    public static int GreatestCommonDivisor(int a, int b) {
        int max = Math.Max(a, b);
        int min = Math.Min(a, b);
        while (min != 0) {
            int temp = min;
            min = max % min;
            max = temp;
        }
        return max;

    }
    public static void Main(string[] args) {
    Debug.Assert(GreatestCommonDivisor((3), (7)) == (1));
    Debug.Assert(GreatestCommonDivisor((10), (15)) == (5));
    Debug.Assert(GreatestCommonDivisor((49), (14)) == (7));
    Debug.Assert(GreatestCommonDivisor((144), (60)) == (12));
    }

}
