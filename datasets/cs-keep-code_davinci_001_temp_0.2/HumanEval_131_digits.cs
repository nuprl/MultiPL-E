using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Given a positive integer n, return the product of the odd digits.
    // Return 0 if all digits are even.
    // For example:
    // digits(1)  == 1
    // digits(4)  == 0
    // digits(235) == 15
    public static int Digits(int n) {
        int result = 1;
        while (n > 0) {
            int digit = n % 10;
            if (digit % 2 == 1) {
                result *= digit;
            }
            n /= 10;
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(Digits((5)) == (5));
    Debug.Assert(Digits((54)) == (5));
    Debug.Assert(Digits((120)) == (1));
    Debug.Assert(Digits((5014)) == (5));
    Debug.Assert(Digits((98765)) == (315));
    Debug.Assert(Digits((5576543)) == (2625));
    Debug.Assert(Digits((2468)) == (0));
    }

}
