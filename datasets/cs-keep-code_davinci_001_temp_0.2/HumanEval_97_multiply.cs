using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Complete the function that takes two integers and returns 
    // the product of their unit digits.
    // Assume the input is always valid.
    // Examples:
    // multiply(148, 412) should return 16.
    // multiply(19, 28) should return 72.
    // multiply(2020, 1851) should return 0.
    // multiply(14,-15) should return 20.
    public static int Multiply(int a, int b) {
        int result = 0;
        int sign = 1;
        if (a < 0) {
            a = -a;
            sign = -sign;
        }
        if (b < 0) {
            b = -b;
            sign = -sign;
        }
        while (a > 0) {
            if ((a & 1) == 1) {
                result += b;
            }
            a >>= 1;
            b <<= 1;
        }
        return sign * result;

    }
    public static void Main(string[] args) {
    Debug.Assert(Multiply((148), (412)) == (16));
    Debug.Assert(Multiply((19), (28)) == (72));
    Debug.Assert(Multiply((2020), (1851)) == (0));
    Debug.Assert(Multiply((14), (-15)) == (20));
    Debug.Assert(Multiply((76), (67)) == (42));
    Debug.Assert(Multiply((17), (27)) == (49));
    Debug.Assert(Multiply((0), (1)) == (0));
    Debug.Assert(Multiply((0), (0)) == (0));
    }

}
