using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // The Brazilian factorial is defined as:
    // brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
    // where n > 0
    // For example:
    // >>> special_factorial(4)
    // 288
    // The function will receive an integer as input and should return the special
    // factorial of this integer.
    public static int SpecialFactorial(int n) {
        int result = 1;
        for (int i = 1; i <= n; i++) {
            result *= i;
        }
        return result;

    }
    public static void Main(string[] args) {
    Debug.Assert(SpecialFactorial((4)) == (288));
    Debug.Assert(SpecialFactorial((5)) == (34560));
    Debug.Assert(SpecialFactorial((7)) == (125411328000));
    Debug.Assert(SpecialFactorial((1)) == (1));
    }

}
