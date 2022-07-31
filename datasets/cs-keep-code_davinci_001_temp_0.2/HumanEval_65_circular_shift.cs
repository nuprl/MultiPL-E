using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Circular shift the digits of the integer x, shift the digits right by shift
    // and return the result as a string.
    // If shift > number of digits, return digits reversed.
    // >>> circular_shift(12, 1)
    // "21"
    // >>> circular_shift(12, 2)
    // "12"
    public static string CircularShift(int x, int shift) {
        int numDigits = 0;
        int xDigit = x;
        while (xDigit > 0) {
            numDigits++;
            xDigit /= 10;
        }
        if (shift > numDigits) {
            return x.ToString().Reverse().ToString();
        }
        int xDigit2 = x;
        for (int i = 0; i < shift; i++) {
            xDigit2 /= 10;
        }
        int xDigit3 = x;
        for (int i = 0; i < numDigits - shift; i++) {
            xDigit3 /= 10;
        }
        return (xDigit2 + xDigit3).ToString();

    }
    public static void Main(string[] args) {
    Debug.Assert(CircularShift((100), (2)).Equals(("001")));
    Debug.Assert(CircularShift((12), (2)).Equals(("12")));
    Debug.Assert(CircularShift((97), (8)).Equals(("79")));
    Debug.Assert(CircularShift((12), (1)).Equals(("21")));
    Debug.Assert(CircularShift((11), (101)).Equals(("11")));
    }

}
